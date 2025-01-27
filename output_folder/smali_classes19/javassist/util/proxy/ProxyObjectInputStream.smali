.class public Ljavassist/util/proxy/ProxyObjectInputStream;
.super Ljava/io/ObjectInputStream;
.source "ProxyObjectInputStream.java"


# instance fields
.field private loader:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 47
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Ljavassist/util/proxy/ProxyObjectInputStream;->loader:Ljava/lang/ClassLoader;

    .line 48
    if-nez v0, :cond_0

    .line 49
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    iput-object v0, p0, Ljavassist/util/proxy/ProxyObjectInputStream;->loader:Ljava/lang/ClassLoader;

    .line 51
    :cond_0
    return-void
.end method


# virtual methods
.method protected readClassDescriptor()Ljava/io/ObjectStreamClass;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Ljavassist/util/proxy/ProxyObjectInputStream;->readBoolean()Z

    move-result v0

    .line 69
    .local v0, "isProxy":Z
    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {p0}, Ljavassist/util/proxy/ProxyObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 71
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Ljavassist/util/proxy/ProxyObjectInputStream;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v2, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 72
    .local v2, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljavassist/util/proxy/ProxyObjectInputStream;->readInt()I

    move-result v3

    .line 73
    .local v3, "length":I
    new-array v4, v3, [Ljava/lang/Class;

    .line 74
    .local v4, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_0

    .line 75
    invoke-virtual {p0}, Ljavassist/util/proxy/ProxyObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    move-object v1, v6

    check-cast v1, Ljava/lang/String;

    .line 76
    iget-object v6, p0, Ljavassist/util/proxy/ProxyObjectInputStream;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v6, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    .line 74
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 78
    .end local v5    # "i":I
    :cond_0
    invoke-virtual {p0}, Ljavassist/util/proxy/ProxyObjectInputStream;->readInt()I

    move-result v3

    .line 79
    new-array v5, v3, [B

    .line 80
    .local v5, "signature":[B
    invoke-virtual {p0, v5}, Ljavassist/util/proxy/ProxyObjectInputStream;->read([B)I

    .line 81
    new-instance v6, Ljavassist/util/proxy/ProxyFactory;

    invoke-direct {v6}, Ljavassist/util/proxy/ProxyFactory;-><init>()V

    .line 84
    .local v6, "factory":Ljavassist/util/proxy/ProxyFactory;
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljavassist/util/proxy/ProxyFactory;->setUseCache(Z)V

    .line 85
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljavassist/util/proxy/ProxyFactory;->setUseWriteReplace(Z)V

    .line 86
    invoke-virtual {v6, v2}, Ljavassist/util/proxy/ProxyFactory;->setSuperclass(Ljava/lang/Class;)V

    .line 87
    invoke-virtual {v6, v4}, Ljavassist/util/proxy/ProxyFactory;->setInterfaces([Ljava/lang/Class;)V

    .line 88
    invoke-virtual {v6, v5}, Ljavassist/util/proxy/ProxyFactory;->createClass([B)Ljava/lang/Class;

    move-result-object v7

    .line 89
    .local v7, "proxyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v7}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v8

    return-object v8

    .line 91
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "length":I
    .end local v4    # "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v5    # "signature":[B
    .end local v6    # "factory":Ljavassist/util/proxy/ProxyFactory;
    .end local v7    # "proxyClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    invoke-super {p0}, Ljava/io/ObjectInputStream;->readClassDescriptor()Ljava/io/ObjectStreamClass;

    move-result-object v1

    return-object v1
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .line 59
    if-eqz p1, :cond_0

    .line 60
    iput-object p1, p0, Ljavassist/util/proxy/ProxyObjectInputStream;->loader:Ljava/lang/ClassLoader;

    goto :goto_0

    .line 62
    :cond_0
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 64
    :goto_0
    return-void
.end method
