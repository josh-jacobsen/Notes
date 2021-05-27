# GraphQL


#### Updating a GraphQL endpoint 

1. Update the `schema.graphql` file at `/katoa/response/backend/reference/schema.graphql`
2. From `/katoa/response/backend` run `yarn graphql:types` command to generate the output file

#### Calling a new GraphQL endpoint 
1. Update the query file (for example `/katoa/response/patient/app/graphql/queries/visit.ts`)
2. From `/katoa/response/patient` run the `yarn graphql:types` command 
4. This will generate the updates to the file (in this example it would be `/katoa/response/patient/app/graphql/type/Visit.ts`) 
5. The new types can then be used



