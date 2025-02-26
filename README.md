# Automated-Playlist-On-Spotify-Using-Terraform
# Spotify Playlist Creator using Terraform

## Overview
This project allows users to create a Spotify playlist using Terraform. By leveraging the Spotify API and Infrastructure as Code (IaC) principles, this setup automates playlist creation with predefined configurations.

## Features
- Create a new Spotify playlist using Terraform.
- Define playlist name, description, and visibility (public/private) in the Terraform configuration.
- Authenticate with the Spotify API using OAuth tokens.
- Manage playlist settings as code for easy modifications.

## Prerequisites
Ensure you have the following before running the project:

- **Terraform** (Latest version) → [Download](https://developer.hashicorp.com/terraform/downloads)
- **Spotify Developer Account** → [Create here](https://developer.spotify.com/)
- **Spotify API Credentials** (Client ID & Client Secret)
- **OAuth Token** (for authentication)

## Setup and Configuration
1. **Clone the Repository**
   ```sh
   git clone https://github.com/yourusername/spotify-playlist-terraform.git
   cd spotify-playlist-terraform
   ```
2. **Set Up Spotify API Credentials**
   - Go to [Spotify Developer Dashboard](https://developer.spotify.com/dashboard/)
   - Create an app and get **Client ID** & **Client Secret**
   - Set up the **Redirect URI** (e.g., `http://localhost:8888/callback`)
   
3. **Export Environment Variables** (or create a `.env` file)
   ```sh
   export SPOTIFY_CLIENT_ID="your_client_id"
   export SPOTIFY_CLIENT_SECRET="your_client_secret"
   export SPOTIFY_ACCESS_TOKEN="your_access_token"
   ```
   
4. **Initialize Terraform**
   ```sh
   terraform init
   ```
   
5. **Plan the Execution**
   ```sh
   terraform plan
   ```
   
6. **Apply the Configuration**
   ```sh
   terraform apply -auto-approve
   ```
   
## Configuration Variables
| Variable Name           | Description                        |
|-------------------------|------------------------------------|
| `playlist_name`         | Name of the Spotify playlist      |
| `playlist_description`  | Description of the playlist       |
| `playlist_public`       | Set to `true` for a public playlist |

These values can be modified in your **Terraform configuration file (`main.tf`)**.

## Example Terraform Configuration (`main.tf`)
```hcl
provider "spotify" {
  client_id     = var.spotify_client_id
  client_secret = var.spotify_client_secret
  access_token  = var.spotify_access_token
}

resource "spotify_playlist" "my_playlist" {
  name        = "My Terraform Playlist"
  description = "A playlist created using Terraform!"
  public      = true
}
```

## Destroy the Playlist
To delete the playlist created via Terraform, run:
```sh
terraform destroy -auto-approve
```

## Troubleshooting
- **Invalid Token Error**: Ensure your access token is valid and has the required scopes.
- **Spotify API Rate Limits**: Spotify enforces API limits; retry after some time if you hit a rate limit.
- **Terraform Errors**: Run `terraform validate` to check for syntax errors.

## Future Enhancements
- Add support for adding songs to the playlist dynamically.
- Implement a user-friendly frontend to configure playlists.
- Automate OAuth token retrieval for better usability.

## License
This project is licensed under the MIT License.

## Contributing
Feel free to fork this repository, create a new branch, and submit a pull request with your improvements!

---
**Author:** Your Name  
**GitHub:** [Your GitHub Profile](https://github.com/yourusername)
