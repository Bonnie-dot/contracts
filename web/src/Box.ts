import { abi, address } from "../abi/box";
import { publicClient, walletClient } from "./utils/client";

const getRetrieve = async () => {
  const data = await publicClient.readContract({
    address: address,
    abi: abi,
    functionName: "retrieve",
  });
  return data;
};

const store = async (newValue: number): Promise<number> => {
  // Only the owner can store by walletClient instead of publicClient
  const txHash = await walletClient.writeContract({
    address: address,
    abi: abi,
    functionName: "store",
    args: [newValue],
  });
  const response = await publicClient.waitForTransactionReceipt({
    hash: txHash,
  });
  return parseInt(response.logs[0].data, 16);
};

export { getRetrieve, store };
