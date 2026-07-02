model ClusterSpec {
    infraID?: string;
    platform: ClusterPlatformSpec;
    release?: ReleaseSpec;
    networking?: NetworkingSpec;
    dns?: DNSSpec;
}

model ClusterPlatformSpec {
    type: "template";
    template: ClusterPlatform;
}

model SubnetSpec {
    id: string;
    name: string;
    cidr: string;
    role: string;
}

model ClusterPlatform {
    projectID?: string;
    region?: string;
    zone?: string;
    network?: string;
    subnet?: string;
    subnets?: SubnetSpec[];
}

model ReleaseSpec {
    image?: string;
    version?: string;
    channelGroup?: string;
}

model NetworkingSpec {
    clusterNetwork?: ClusterNetworkEntry[];
    serviceNetwork?: string[];
}

model ClusterNetworkEntry {
    cidr?: string;
    hostPrefix?: integer;
}

model DNSSpec {
    baseDomain?: string;
}
