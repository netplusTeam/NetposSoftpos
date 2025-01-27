.class public abstract Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;
.super Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
.source "BinaryProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/utilint/BinaryProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "SimpleMessage"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sleepycat/je/rep/utilint/BinaryProtocol;


# direct methods
.method protected constructor <init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/utilint/BinaryProtocol;

    .line 770
    iput-object p1, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;->this$0:Lcom/sleepycat/je/rep/utilint/BinaryProtocol;

    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;-><init>(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    return-void
.end method


# virtual methods
.method protected getBoolean(Ljava/nio/ByteBuffer;)Z
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 935
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 936
    .local v0, "b":B
    if-nez v0, :cond_0

    .line 937
    const/4 v1, 0x0

    return v1

    .line 938
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 939
    return v1

    .line 941
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown boolean value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 942
    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
.end method

.method protected getByteArray(Ljava/nio/ByteBuffer;)[B
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 929
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    new-array v0, v0, [B

    .line 930
    .local v0, "ba":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 931
    return-object v0
.end method

.method protected getDouble(Ljava/nio/ByteBuffer;)Ljava/lang/Double;
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 960
    new-instance v0, Ljava/lang/Double;

    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;->this$0:Lcom/sleepycat/je/rep/utilint/BinaryProtocol;

    invoke-virtual {v1, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Double;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected getEnum(Ljava/lang/Class;Ljava/nio/ByteBuffer;)Ljava/lang/Enum;
    .locals 2
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/nio/ByteBuffer;",
            ")TT;"
        }
    .end annotation

    .line 955
    .local p1, "enumType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;->this$0:Lcom/sleepycat/je/rep/utilint/BinaryProtocol;

    invoke-virtual {v0, p2}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    .line 956
    .local v0, "enumName":Ljava/lang/String;
    invoke-static {p1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    return-object v1
.end method

.method protected getNameIdPair(Ljava/nio/ByteBuffer;)Lcom/sleepycat/je/rep/impl/node/NameIdPair;
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 964
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;->this$0:Lcom/sleepycat/je/rep/utilint/BinaryProtocol;

    invoke-static {p1, v0}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->deserialize(Ljava/nio/ByteBuffer;Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v0

    return-object v0
.end method

.method protected getStringArray(Ljava/nio/ByteBuffer;)[Ljava/lang/String;
    .locals 3
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 921
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;)I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 922
    .local v0, "sa":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 923
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;->this$0:Lcom/sleepycat/je/rep/utilint/BinaryProtocol;

    invoke-virtual {v2, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->getString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 922
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 925
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method protected getVLSN(Ljava/nio/ByteBuffer;)Lcom/sleepycat/je/utilint/VLSN;
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 947
    invoke-static {p1}, Lcom/sleepycat/je/log/LogUtils;->readLong(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    .line 948
    .local v0, "vlsn":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/sleepycat/je/utilint/VLSN;

    invoke-direct {v2, v0, v1}, Lcom/sleepycat/je/utilint/VLSN;-><init>(J)V

    :goto_0
    return-object v2
.end method

.method protected putByteArray(Ljava/nio/ByteBuffer;[B)V
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "ba"    # [B

    .line 866
    array-length v0, p2

    invoke-static {p1, v0}, Lcom/sleepycat/je/log/LogUtils;->writeInt(Ljava/nio/ByteBuffer;I)V

    .line 867
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 868
    return-void
.end method

.method protected putWireFormat(Ljava/nio/ByteBuffer;Ljava/lang/Object;)V
    .locals 6
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "obj"    # Ljava/lang/Object;

    .line 812
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 813
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_0

    .line 814
    move-object v1, p2

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/sleepycat/je/log/LogUtils;->writeLong(Ljava/nio/ByteBuffer;J)V

    goto/16 :goto_1

    .line 815
    :cond_0
    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_1

    .line 816
    move-object v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p1, v1}, Lcom/sleepycat/je/log/LogUtils;->writeInt(Ljava/nio/ByteBuffer;I)V

    goto/16 :goto_1

    .line 817
    :cond_1
    const-class v1, Ljava/lang/Short;

    if-ne v0, v1, :cond_2

    .line 818
    move-object v1, p2

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    invoke-static {p1, v1}, Lcom/sleepycat/je/log/LogUtils;->writeShort(Ljava/nio/ByteBuffer;S)V

    goto/16 :goto_1

    .line 819
    :cond_2
    const-class v1, Ljava/lang/Byte;

    if-ne v0, v1, :cond_3

    .line 820
    move-object v1, p2

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto/16 :goto_1

    .line 821
    :cond_3
    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_4

    .line 822
    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto/16 :goto_1

    .line 825
    :cond_4
    const-class v1, Lcom/sleepycat/je/utilint/VLSN;

    if-ne v0, v1, :cond_5

    .line 826
    move-object v1, p2

    check-cast v1, Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/sleepycat/je/log/LogUtils;->writeLong(Ljava/nio/ByteBuffer;J)V

    goto :goto_1

    .line 827
    :cond_5
    const-class v1, Ljava/lang/Enum;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 829
    move-object v1, p2

    check-cast v1, Ljava/lang/Enum;

    .line 830
    .local v1, "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;->this$0:Lcom/sleepycat/je/rep/utilint/BinaryProtocol;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->putString(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 831
    .end local v1    # "e":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    goto :goto_1

    :cond_6
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_7

    .line 837
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;->this$0:Lcom/sleepycat/je/rep/utilint/BinaryProtocol;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->putString(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    goto :goto_1

    .line 838
    :cond_7
    const-class v1, Ljava/lang/Double;

    if-ne v0, v1, :cond_8

    .line 840
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;->this$0:Lcom/sleepycat/je/rep/utilint/BinaryProtocol;

    move-object v2, p2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->putString(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    goto :goto_1

    .line 841
    :cond_8
    const-class v1, [Ljava/lang/String;

    if-ne v0, v1, :cond_a

    .line 842
    move-object v1, p2

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    .line 843
    .local v1, "sa":[Ljava/lang/String;
    array-length v2, v1

    invoke-static {p1, v2}, Lcom/sleepycat/je/log/LogUtils;->writeInt(Ljava/nio/ByteBuffer;I)V

    .line 844
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_9

    aget-object v4, v1, v3

    .line 845
    .local v4, "element":Ljava/lang/String;
    iget-object v5, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;->this$0:Lcom/sleepycat/je/rep/utilint/BinaryProtocol;

    invoke-virtual {v5, v4, p1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->putString(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 844
    .end local v4    # "element":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 847
    .end local v1    # "sa":[Ljava/lang/String;
    :cond_9
    goto :goto_1

    :cond_a
    const-class v1, [B

    if-ne v0, v1, :cond_b

    .line 848
    move-object v1, p2

    check-cast v1, [B

    check-cast v1, [B

    invoke-virtual {p0, p1, v1}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;->putByteArray(Ljava/nio/ByteBuffer;[B)V

    goto :goto_1

    .line 849
    :cond_b
    instance-of v1, p2, Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    if-eqz v1, :cond_c

    .line 851
    move-object v1, p2

    check-cast v1, Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;->this$0:Lcom/sleepycat/je/rep/utilint/BinaryProtocol;

    invoke-virtual {v1, p1, v2}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->serialize(Ljava/nio/ByteBuffer;Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)V

    .line 856
    :goto_1
    return-void

    .line 853
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
.end method

.method protected varargs wireFormat([Ljava/lang/Object;)Ljava/nio/ByteBuffer;
    .locals 6
    .param p1, "arguments"    # [Ljava/lang/Object;

    .line 787
    const/4 v0, 0x0

    .line 788
    .local v0, "size":I
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    .line 789
    .local v4, "obj":Ljava/lang/Object;
    invoke-virtual {p0, v4}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;->wireFormatSize(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v0, v5

    .line 788
    .end local v4    # "obj":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 793
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;->allocateInitializedBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 795
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    array-length v3, p1

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v4, p1, v2

    .line 796
    .restart local v4    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, v1, v4}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;->putWireFormat(Ljava/nio/ByteBuffer;Ljava/lang/Object;)V

    .line 795
    .end local v4    # "obj":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 798
    :cond_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 799
    return-object v1
.end method

.method protected wireFormatSize(Ljava/lang/Object;)I
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 878
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 879
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ljava/lang/Long;

    const/16 v2, 0x8

    if-ne v0, v1, :cond_0

    .line 880
    return v2

    .line 881
    :cond_0
    const-class v1, Ljava/lang/Integer;

    const/4 v3, 0x4

    if-ne v0, v1, :cond_1

    .line 882
    return v3

    .line 883
    :cond_1
    const-class v1, Ljava/lang/Short;

    if-ne v0, v1, :cond_2

    .line 884
    const/4 v1, 0x2

    return v1

    .line 885
    :cond_2
    const-class v1, Ljava/lang/Byte;

    const/4 v4, 0x1

    if-ne v0, v1, :cond_3

    .line 886
    return v4

    .line 887
    :cond_3
    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_4

    .line 888
    return v4

    .line 889
    :cond_4
    const-class v1, Lcom/sleepycat/je/utilint/VLSN;

    if-ne v0, v1, :cond_5

    .line 890
    return v2

    .line 891
    :cond_5
    const-class v1, Ljava/lang/Enum;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 892
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;->this$0:Lcom/sleepycat/je/rep/utilint/BinaryProtocol;

    move-object v2, p1

    check-cast v2, Ljava/lang/Enum;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->stringSize(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 893
    :cond_6
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_7

    .line 894
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;->this$0:Lcom/sleepycat/je/rep/utilint/BinaryProtocol;

    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->stringSize(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 895
    :cond_7
    const-class v1, Ljava/lang/Double;

    if-ne v0, v1, :cond_8

    .line 896
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;->this$0:Lcom/sleepycat/je/rep/utilint/BinaryProtocol;

    move-object v2, p1

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->stringSize(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 897
    :cond_8
    const-class v1, [Ljava/lang/String;

    if-ne v0, v1, :cond_a

    .line 898
    const/4 v1, 0x4

    .line 899
    .local v1, "size":I
    move-object v2, p1

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    .line 900
    .local v2, "sa":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_9

    aget-object v5, v2, v4

    .line 901
    .local v5, "element":Ljava/lang/String;
    iget-object v6, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;->this$0:Lcom/sleepycat/je/rep/utilint/BinaryProtocol;

    invoke-virtual {v6, v5}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol;->stringSize(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v1, v6

    .line 900
    .end local v5    # "element":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 903
    :cond_9
    return v1

    .line 904
    .end local v1    # "size":I
    .end local v2    # "sa":[Ljava/lang/String;
    :cond_a
    const-class v1, [B

    if-ne v0, v1, :cond_b

    .line 905
    move-object v1, p1

    check-cast v1, [B

    check-cast v1, [B

    array-length v1, v1

    add-int/2addr v1, v3

    return v1

    .line 906
    :cond_b
    instance-of v1, p1, Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    if-eqz v1, :cond_c

    .line 908
    move-object v1, p1

    check-cast v1, Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$SimpleMessage;->this$0:Lcom/sleepycat/je/rep/utilint/BinaryProtocol;

    invoke-virtual {v1, v2}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->serializedSize(Lcom/sleepycat/je/rep/utilint/BinaryProtocol;)I

    move-result v1

    return v1

    .line 910
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 911
    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1
.end method
