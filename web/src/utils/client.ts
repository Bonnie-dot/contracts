import { Hex, createPublicClient, createWalletClient, http } from "viem";
import { sepolia } from "viem/chains";
import "dotenv/config";
import { privateKeyToAccount } from "viem/accounts";
const publicClient = createPublicClient({
  chain: sepolia,
  transport: http(process.env.SEPOLIA_RPC_URL),
});

const walletClient = createWalletClient({
  chain: sepolia,
  transport: http(process.env.SEPOLIA_RPC_URL),
  account: privateKeyToAccount(process.env.PRIVATE_KEY as Hex),
});
export { publicClient, walletClient };
