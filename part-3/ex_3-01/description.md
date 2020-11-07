***NOTE:** The dockerfiles optimized are the ones updated for exercise 1.12*

- The *original* size of the **frontend** image was ```535MB```
- The *original* size of the **backend** image was ```332MB```

- The *optimized* size of the **frontend** image is ```502MB```
- The *optimized* size of the **backend** image is ```299MB```

An interesting note is that while my frontend image is 70MB larger than it should have been as per the exercise description, the backend image is ~50MB smaller. Maybe something to do with my addition of ```npm audit fix```?
