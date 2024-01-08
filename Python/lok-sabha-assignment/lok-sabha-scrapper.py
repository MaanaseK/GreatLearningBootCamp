import csv
from collections import defaultdict

file_name = "lok-shabha-result-2019.csv"
output_file = "top_3_candidates_per_constituency.csv"

# Read the CSV file and create a dictionary to store constituency-wise candidate vote shares
constituency_votes = defaultdict(list)

with open(file_name, newline='') as csvfile:
    reader = csv.DictReader(csvfile)

    # Store data in a dictionary grouped by 'constituency-name'
    for row in reader:
        constituency = row['constituency-name']
        vote_share = float(row['candidate-vote-share'])
        candidate_name = row['candidate-name']
        # Store necessary columns' data for further processing
        required_columns = {key: row[key] for key in ('\ufeffstate-name', 'category', 'party-name', 'total-votes')}
        required_columns['candidate-name'] = candidate_name
        required_columns['candidate-vote-share'] = vote_share
        # Assign phone-number and email-address based on candidate name
        if candidate_name == 'NOTA':
            required_columns['phone-number'] = 'NA'
            required_columns['email-address'] = 'NA'
        else:
            required_columns['phone-number'] = 'Not Found'  # Replace with actual phone number
            required_columns['email-address'] = 'Not Found'  # Replace with actual email address
        constituency_votes[constituency].append(required_columns)

# Get top 3 candidates' vote shares for each constituency
top_3_per_constituency = {}
for constituency, votes in constituency_votes.items():
    top_3 = sorted(votes, key=lambda x: float(x['candidate-vote-share']), reverse=True)[:3]
    top_3_per_constituency[constituency] = top_3

# Assign the result ('Winner', '2nd place', '3rd place') based on vote share
for constituency, top_3_candidates in top_3_per_constituency.items():
    for idx, candidate in enumerate(top_3_candidates, 1):
        if idx == 1:
            candidate['result'] = 'Winner'
        elif idx == 2:
            candidate['result'] = '2nd place'
        else:
            candidate['result'] = '3rd place'

# Write the top 3 candidates' data for each constituency to a new CSV file
with open(output_file, 'w', newline='') as csvfile:
    fieldnames = ['\ufeffstate-name', 'constituency-name', 'candidate-name', 'category', 'party-name', 'total-votes',
                  'candidate-vote-share', 'result', 'phone-number', 'email-address']
    writer = csv.DictWriter(csvfile, fieldnames=fieldnames)

    writer.writeheader()

    for constituency, top_3_candidates in top_3_per_constituency.items():
        for candidate in top_3_candidates:
            candidate['constituency-name'] = constituency
            writer.writerow(candidate)
