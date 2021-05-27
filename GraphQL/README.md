# GraphQL


#### Updating a GraphQL endpoint 

1. Update the `schema.graphql` file at `response/backend/reference/schema.graphql`
2. From `/katoa/response/backend` run `yarn graphql:types` command to generate the output file

#### Calling a new GraphQL endpoint 
1. Update the query file (for example `/katoa/response/patient/app/graphql/queries/visit.ts`)
2. Run the `yarn graphql:types` command 
3. This will generate the updates to the `response/patient/app/graphql/type/Visit.ts` file 
4. The new types can then be used



