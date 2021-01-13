# Using the adutil

This tool allows you to add/remove Sumo Logic users to Sumo Logic roles, updating membership in the corresponding Active Directory group.

### Adding a user to a group

1. Navigate to the [dv-sumologic drone repo](https://drone.dv.nyt.net/nytimes/dv-sumologic).

1. Select a recent build from the activity feed.

1. Click the `DEPLOY` button.

1. Make sure that `Promote` is selected for the type.

1. The `Target` field should be `add-user`.

1. Add a parameter with `group` as the key and the name of the group you'd like to add the user to as the value. **Do not include the sumo prefix.** The adutil prepends the sumo prefix already.

1. Add a parameter with `email` as the key and the email of the user you'd like to add as the value.

1. Click the `DEPLOY` button. This will kick off a Drone job to add the user to the group.

### Deleting a user from a group

1. The steps are the same as adding a user, except you need to change the value of the `Target` field to `del-user`.