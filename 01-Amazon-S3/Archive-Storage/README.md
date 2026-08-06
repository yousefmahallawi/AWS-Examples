# Amazon S3 Archive Storage

Amazon S3 provides multiple archive storage options for data that is accessed infrequently and can tolerate retrieval delays in exchange for lower storage costs.

## Archive Storage Classes

- S3 Glacier Flexible Retrieval
- S3 Glacier Deep Archive

These storage classes are best when you already know your access pattern and manually move objects into archive storage.

## Archive Access Tiers

Amazon S3 Intelligent-Tiering can automatically move objects into archive tiers.

Archive tiers include:

- Archive Access
- Deep Archive Access

Unlike archive storage classes, archive access tiers automatically transition objects based on access patterns.

## Retrieval Times

| Storage Option | Retrieval Time |
|---------------|----------------|
| Glacier Flexible Retrieval | Minutes to Hours |
| Intelligent-Tiering Archive Access | Minutes |
| Glacier Deep Archive | 12–48 Hours |
| Intelligent-Tiering Deep Archive | 12+ Hours |

## Notes

- Archive Storage Classes require manual lifecycle transitions.
- Archive Access Tiers automatically move objects.
- Archive storage significantly reduces storage costs.
- Retrieval delays increase as storage costs decrease.