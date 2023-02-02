# Secrets Automation Pillar
# =========================
# This files contains some data used to set up a 1Password Secrets Automation Connect
# server.
# Currently, these credentials point to "ryhino-prod" environment.

# Directory under which the credentials.json and docker-compose.yaml will be put
{%- set opsa_config_dir = "/root/opsa" %}

secrets_automation:
  connect_server:
    api_image_tag: "sha256:143df8c290dcb353b4da896a6a8a8c11f686cb1033981982f798c60f67efd090"
    sync_image_tag: "sha256:7f853e8fb65d32c032819d09a2af31137b723701cc06da313aa5e8b775bc79d7"

    config_dir: {{ opsa_config_dir }}

    credentials_json: |
      -----BEGIN PGP MESSAGE-----
      hF4DNtygortYQDMSAQdA8IGcH5OYYhA35hGTC/DMOrFmnol/aN/0dUXNAt4U1S4w
      E7iNTxO7d0fBS8hs2zP+lkjliQ8GVZiB2qdFdW9qBHXRzgIffhEtGLqYs/ObjLK+
      1OkBCQIQpW1bgnFOq4zeHqgVuy2iMYgyD4BHMaEt/C8r0MCnjJoNEcRZqmMQBWQG
      xbIVtUSscJzKNe2ThzZ5PSGSA5OTaYFMRMTMndk/Fczz2ydeP8mAGh26JdvFuCMi
      og6VUBBfVqfJqcg71YiYJW99xuWYia5iXx6IC9V1xF3cR5SPOQVK7+L5zINW5sKC
      24W7gnnFDykekAu0lWtyW6BYdwCs2pfKlwyKDHFVJ1TRxsuNXOhUzOVuj9ZpBkxV
      TH3PmwJusZWKvKw9rTDuvxpskGSNZrSIuqjJ8BzC34hAlUhULGL5pAcWeFci7c7s
      7TmKPY/qTR+GecKyzzPOGnYRgPzShessxwRJ7+9CXKDeOmPJ9RSCvbeCtm7PNKYC
      3jTa11RMNvUsWYQekFEVipfZrlL4Br2IEzeZE7kuh3mIXEdN5USHUGsS3VjY+CVz
      8aSRRl1BGvI3rdjt+Rwb6M4IbrQzyszmLJzTm186RG8b/VxoH3qA2VlXkS/mRfTy
      F6U4rTBSzsxYmiX4PqqPD1j9CcYXN9mDV1Bh4CaS0j2POMfyEuwvX7OozjJ+UC6+
      3eifS/n7UEumN4AlKpTfrCse+Eh3Tzv4rDNx5+pmshzKvpecyqRaKcjqj0AKsyo9
      hAuKT4ADoZfLyD5igOrnNP+JV9eSxEBbe66vjubtYkme+MEx26PI76Y6HLwv0TrD
      Dmde5LEJOW0ex7VA7K2oeaKrsl9hlSjkR4QCV2eyY7BoM7thE9AJ8lZWWeJEnNfW
      VS17yAhl4rThNMFPQfRZNBwSNsTomlXlKn9Kblile7h6Wp75gqIthu2EqIbx6bFM
      cU5LTW/MxCPR5rCWHS7g5mOtiO+DeoRG058bzS95HAZVxJDcr81XKVi+fij/hrAv
      RmQJnRJJbhASYRfkYiUxQtJnycNfWC1IdG5lL+UHz/OQf5le87rI+9/W+kZ8b4Qi
      rB2zmS35kgUlWQZj8OYFqaCKEzWq+bdYhPD44EGQKz3nbMf8PLVauIlfRdHu9FkR
      PeaXL6RtFPXH2HMowZhlZib2FAQrBxFqnGgz825Ki2tXUKEdvukTXXlLVDKmltjo
      jxlOraDGMvcIdYoqoMuj3z8Oee9YO9M9SoYdrWGGd2QPg++6qJMt1gOqyF67hk9v
      AHZxeAhP92suv2X3RFJGagXaX23/0U1Def+JEDWNJ/bPySteZQYCC0GMZUO9Cp2I
      cMdMqvQEHnJXwEKbWDx47vg2mP/Q/X64csllCqWEkGwUyQXgI1JX/PPO01nu9FRc
      Z3Tdcv/z7AkGchNX8CMzetsouJ8E5w9iYhkeRU9TRfoAa8Mrpu4C6yk0BG20xt/W
      1jn9QTw=
      =f2E9
      -----END PGP MESSAGE-----

  connect_client:
    access_token: |
      -----BEGIN PGP MESSAGE-----
      hF4DNtygortYQDMSAQdAs/UaxgOexWiZRIQH9BoMOCZynHMmPT66Ixs91cXtuFww
      47N0EKYsVrKxL5DkSQ/VTYAwWIbqO6raexGoxT4mCE4SYgO9LWJmhbMX3j1jpz1B
      1OkBCQIQPbo12aUWtUUY59PEHLHyB3xUag9PP737yAXCiqTVc12lunt/SqQX0yNl
      8YBk5imR6Fa1hljZTsj6tmLY6mewYLKXoZNTNBAoKBe+oHEbkbsIriBEvrG6Ppsj
      iN987AHHRTp+iZ7ENsM47i+79SM+SQwZGjTwcLPlxr7btfNJd0sQem56q/NISYYc
      E9LGT97aIaldQ+kSU2B/TkB9MuSXAjvhrbJU6QnNkmsTLvrhpz/4A/NhZuAcyRGh
      80Mm0NnHaebq8wZBXHTYK410IeSc5IErzpxVjgBlsnrR9uuAIri034RzWc1NyDDi
      a9Fyy/jTqLOXHZf6K3muqD0mJIdf7jmt0mA6uJBDLalWXlUjonqLUN8v2flMlm22
      khPemAqgk+SIQNbaZs0CAlXKXA2dCXvCs5mYRo1n/Ksebf1uvYWME20sm+mNrKkB
      3oN7OQGOZyGxDkicgDVuLDkpg+L79dIYT8qCBSeCgG72eJaCgaO9k90lcBAHBYAQ
      LiDqGgX4sm+X6fmiuBtwIxrWjHOBncgQPuIvoK7Ot/ZF3pFvbB3j9ZNU7UfwfD1R
      HLebiWFccTJry7R+SRUrjQy3a1VqG6VXJcq80TM/43j3E0b4qmsOeuhwwhxD0x+S
      V+shdQRxKFyITntPAk5NgHOo/u7smxBWerI/DGxa0bHJJXlv7nw8rqXI+oO9xmK8
      tu1tqFscRexZQDwgSqiSa3iy1OfjvhtHD4ufn6/HiqFz6eNwJAzQ+gQq4m6S0GZU
      56BId9jhgDSmq1al8s4UF8xFvCHYugEkqRfv1UJDsLYmyUD3kyM5qukTjgZq8CXe
      SQIUQs9HPNVybjw5
      =KM63
      -----END PGP MESSAGE-----

# Run OPSA's Docker container.
# This pillar requires "salt-formulas/docker-formula".
docker:
  compose:
    applications:
      - connect-server
    connect-server:
      path:  {{ opsa_config_dir }}/docker-compose.yaml
