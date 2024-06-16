import { getRetrieve, store } from "../src/Box";

describe("Box", () => {
  it("should call store successfully", async () => {
    const data = await store(1);
    expect(data).not.toBeUndefined();
  });

  it("should call retrieveData successfully", async () => {
    const data = await getRetrieve();
    expect(data).not.toBeUndefined();
  });
});
