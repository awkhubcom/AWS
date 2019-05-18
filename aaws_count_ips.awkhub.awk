BEGIN{
FS="/"
}

{
#printf("NR%s NF%s: %s \n", NR,NF,$2)

count += 2^(32-$2)
} 

END {
printf("%d\n",count)
}
