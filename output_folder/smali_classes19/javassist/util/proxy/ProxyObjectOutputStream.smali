.class public Ljavassist/util/proxy/ProxyObjectOutputStream;
.super Ljava/io/ObjectOutputStream;
.source "ProxyObjectOutputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 45
    return-void
.end method


# virtual methods
.method protected writeClassDescriptor(Ljava/io/ObjectStreamClass;)V
    .locals 8
    .param p1, "desc"    # Ljava/io/ObjectStreamClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v0

    .line 50
    .local v0, "cl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v0}, Ljavassist/util/proxy/ProxyFactory;->isProxyClass(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 51
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljavassist/util/proxy/ProxyObjectOutputStream;->writeBoolean(Z)V

    .line 52
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    .line 53
    .local v2, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v3

    .line 54
    .local v3, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {v0}, Ljavassist/util/proxy/ProxyFactory;->getFilterSignature(Ljava/lang/Class;)[B

    move-result-object v4

    .line 55
    .local v4, "signature":[B
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 56
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {p0, v5}, Ljavassist/util/proxy/ProxyObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 58
    array-length v6, v3

    sub-int/2addr v6, v1

    invoke-virtual {p0, v6}, Ljavassist/util/proxy/ProxyObjectOutputStream;->writeInt(I)V

    .line 59
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v3

    if-ge v1, v6, :cond_1

    .line 60
    aget-object v6, v3, v1

    .line 61
    .local v6, "interfaze":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v7, Ljavassist/util/proxy/ProxyObject;

    if-eq v6, v7, :cond_0

    const-class v7, Ljavassist/util/proxy/Proxy;

    if-eq v6, v7, :cond_0

    .line 62
    aget-object v7, v3, v1

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 63
    invoke-virtual {p0, v5}, Ljavassist/util/proxy/ProxyObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 59
    .end local v6    # "interfaze":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    .end local v1    # "i":I
    :cond_1
    array-length v1, v4

    invoke-virtual {p0, v1}, Ljavassist/util/proxy/ProxyObjectOutputStream;->writeInt(I)V

    .line 67
    invoke-virtual {p0, v4}, Ljavassist/util/proxy/ProxyObjectOutputStream;->write([B)V

    .line 68
    .end local v2    # "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v4    # "signature":[B
    .end local v5    # "name":Ljava/lang/String;
    goto :goto_1

    .line 69
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljavassist/util/proxy/ProxyObjectOutputStream;->writeBoolean(Z)V

    .line 70
    invoke-super {p0, p1}, Ljava/io/ObjectOutputStream;->writeClassDescriptor(Ljava/io/ObjectStreamClass;)V

    .line 72
    :goto_1
    return-void
.end method
