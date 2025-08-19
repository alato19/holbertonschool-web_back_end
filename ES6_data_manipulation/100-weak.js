export const weakMap = new WeakMap();

export function queryAPI(endpoint) {
  if (typeof endpoint !== 'object' || endpoint === null) {
    throw new Error('Endpoint must be an object');
  }
  
  let count = weakMap.get(endpoint) || 0;

  count += 1;

  if (count >= 5) {
    throw new Error('Endpoint load is high');
  }
  
  weakMap.set(endpoint, count);
  return `Called ${count} time(s) for ${endpoint.name}`;
}
