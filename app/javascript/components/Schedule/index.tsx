import React from "react";
import { Query } from "react-apollo";
import gql from "graphql-tag";

const ScheduleQuery = gql`
  {
    schedules {
      id
      title
      description
    }
  }
`;

export default () => (
  <Query query={ScheduleQuery}>
    {({ data, loading }) => (
      <div>
        {loading
          ? "loading..."
          : data.schedules.map(({ id, title, description}) => (
              <div key={id}>
                <b>{title}</b> {description ? `description: ${description}` : null}
              </div>
            ))}
      </div>
    )}
  </Query>
);
