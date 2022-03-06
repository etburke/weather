// routes/index.js
import { useLoaderData, Link } from 'remix'
import  prisma from '~/lib/db.server'

export const loader = async () => {
  const data = {
    locations: await prisma.locations.findMany(),
  }
  return data
}

export default function Index() {
  const { locations } = useLoaderData()

  return (
    <>
      <div>
        <h1>Locations</h1>
      </div>
      <ul>
        {locations.map((location) => (
          <li key={location.device_id}>
            <h1>{location.location}</h1>
            <p>{location.environment}</p>
          </li>
        ))}
      </ul>
    </>
  )
}