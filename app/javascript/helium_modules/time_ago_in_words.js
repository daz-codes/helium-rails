export const time_ago_in_words = (mins) => {
  return mins > 0 ? `${mins} minute${mins == 1 ? "" : "s"} ago` : "Just now";
};
