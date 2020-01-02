function [] = conectar(IP_MASTER_MACHINE, IP_LOCAL_MACHINE)
    rosinit(strcat('http://', IP_MASTER_MACHINE, ':11311'), 'NodeHost', ...
            IP_LOCAL_MACHINE);
end