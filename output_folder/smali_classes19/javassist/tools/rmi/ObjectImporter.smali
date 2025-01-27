.class public Ljavassist/tools/rmi/ObjectImporter;
.super Ljava/lang/Object;
.source "ObjectImporter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final proxyConstructorParamTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final endofline:[B

.field protected lookupCommand:[B

.field private orgPort:I

.field private orgServername:Ljava/lang/String;

.field private port:I

.field protected rmiCommand:[B

.field private servername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 195
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljavassist/tools/rmi/ObjectImporter;

    aput-object v2, v0, v1

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Ljavassist/tools/rmi/ObjectImporter;->proxyConstructorParamTypes:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/applet/Applet;)V
    .locals 2
    .param p1, "applet"    # Ljava/applet/Applet;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Ljavassist/tools/rmi/ObjectImporter;->endofline:[B

    .line 88
    const-string v0, "POST /lookup HTTP/1.0"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Ljavassist/tools/rmi/ObjectImporter;->lookupCommand:[B

    .line 89
    const-string v0, "POST /rmi HTTP/1.0"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Ljavassist/tools/rmi/ObjectImporter;->rmiCommand:[B

    .line 101
    invoke-virtual {p1}, Ljava/applet/Applet;->getCodeBase()Ljava/net/URL;

    move-result-object v0

    .line 102
    .local v0, "codebase":Ljava/net/URL;
    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavassist/tools/rmi/ObjectImporter;->servername:Ljava/lang/String;

    iput-object v1, p0, Ljavassist/tools/rmi/ObjectImporter;->orgServername:Ljava/lang/String;

    .line 103
    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v1

    iput v1, p0, Ljavassist/tools/rmi/ObjectImporter;->port:I

    iput v1, p0, Ljavassist/tools/rmi/ObjectImporter;->orgPort:I

    .line 104
    return-void

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "servername"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Ljavassist/tools/rmi/ObjectImporter;->endofline:[B

    .line 88
    const-string v0, "POST /lookup HTTP/1.0"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Ljavassist/tools/rmi/ObjectImporter;->lookupCommand:[B

    .line 89
    const-string v0, "POST /rmi HTTP/1.0"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Ljavassist/tools/rmi/ObjectImporter;->rmiCommand:[B

    .line 120
    iput-object p1, p0, Ljavassist/tools/rmi/ObjectImporter;->servername:Ljava/lang/String;

    iput-object p1, p0, Ljavassist/tools/rmi/ObjectImporter;->orgServername:Ljava/lang/String;

    .line 121
    iput p2, p0, Ljavassist/tools/rmi/ObjectImporter;->port:I

    iput p2, p0, Ljavassist/tools/rmi/ObjectImporter;->orgPort:I

    .line 122
    return-void

    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method private createProxy(ILjava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "oid"    # I
    .param p2, "classname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 199
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 200
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Ljavassist/tools/rmi/ObjectImporter;->proxyConstructorParamTypes:[Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 201
    .local v1, "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method private skipHeader(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 286
    :goto_0
    const/4 v0, 0x0

    .line 287
    .local v0, "len":I
    :goto_1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    move v2, v1

    .local v2, "c":I
    if-ltz v1, :cond_0

    const/16 v1, 0xd

    if-eq v2, v1, :cond_0

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 290
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    .line 291
    .end local v2    # "c":I
    if-gtz v0, :cond_1

    .line 292
    return-void

    .line 291
    :cond_1
    goto :goto_0
.end method

.method private writeParameters(Ljava/io/ObjectOutputStream;[Ljava/lang/Object;)V
    .locals 5
    .param p1, "dout"    # Ljava/io/ObjectOutputStream;
    .param p2, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    array-length v0, p2

    .line 298
    .local v0, "n":I
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 299
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 300
    aget-object v2, p2, v1

    instance-of v2, v2, Ljavassist/tools/rmi/Proxy;

    if-eqz v2, :cond_0

    .line 301
    aget-object v2, p2, v1

    check-cast v2, Ljavassist/tools/rmi/Proxy;

    .line 302
    .local v2, "p":Ljavassist/tools/rmi/Proxy;
    new-instance v3, Ljavassist/tools/rmi/RemoteRef;

    invoke-interface {v2}, Ljavassist/tools/rmi/Proxy;->_getObjectId()I

    move-result v4

    invoke-direct {v3, v4}, Ljavassist/tools/rmi/RemoteRef;-><init>(I)V

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 303
    .end local v2    # "p":Ljavassist/tools/rmi/Proxy;
    goto :goto_1

    .line 305
    :cond_0
    aget-object v2, p2, v1

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 299
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 306
    .end local v1    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public call(II[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p1, "objectid"    # I
    .param p2, "methodid"    # I
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/tools/rmi/RemoteException;
        }
    .end annotation

    .line 234
    :try_start_0
    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Ljavassist/tools/rmi/ObjectImporter;->servername:Ljava/lang/String;

    iget v2, p0, Ljavassist/tools/rmi/ObjectImporter;->port:I

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 235
    .local v0, "sock":Ljava/net/Socket;
    new-instance v1, Ljava/io/BufferedOutputStream;

    .line 236
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 237
    .local v1, "out":Ljava/io/OutputStream;
    iget-object v2, p0, Ljavassist/tools/rmi/ObjectImporter;->rmiCommand:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 238
    iget-object v2, p0, Ljavassist/tools/rmi/ObjectImporter;->endofline:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 239
    iget-object v2, p0, Ljavassist/tools/rmi/ObjectImporter;->endofline:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 241
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 242
    .local v2, "dout":Ljava/io/ObjectOutputStream;
    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 243
    invoke-virtual {v2, p2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 244
    invoke-direct {p0, v2, p3}, Ljavassist/tools/rmi/ObjectImporter;->writeParameters(Ljava/io/ObjectOutputStream;[Ljava/lang/Object;)V

    .line 245
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    .line 247
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 248
    .local v3, "ins":Ljava/io/InputStream;
    invoke-direct {p0, v3}, Ljavassist/tools/rmi/ObjectImporter;->skipHeader(Ljava/io/InputStream;)V

    .line 249
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 250
    .local v4, "din":Ljava/io/ObjectInputStream;
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v5

    .line 251
    .local v5, "result":Z
    const/4 v6, 0x0

    .line 252
    .local v6, "rvalue":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 253
    .local v7, "errmsg":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 254
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v8

    move-object v6, v8

    goto :goto_0

    .line 256
    :cond_0
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 258
    :goto_0
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    .line 259
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 260
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 262
    instance-of v8, v6, Ljavassist/tools/rmi/RemoteRef;

    if-eqz v8, :cond_1

    .line 263
    move-object v8, v6

    check-cast v8, Ljavassist/tools/rmi/RemoteRef;

    .line 264
    .local v8, "ref":Ljavassist/tools/rmi/RemoteRef;
    iget v9, v8, Ljavassist/tools/rmi/RemoteRef;->oid:I

    iget-object v10, v8, Ljavassist/tools/rmi/RemoteRef;->classname:Ljava/lang/String;

    invoke-direct {p0, v9, v10}, Ljavassist/tools/rmi/ObjectImporter;->createProxy(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v9

    .line 275
    .end local v0    # "sock":Ljava/net/Socket;
    .end local v1    # "out":Ljava/io/OutputStream;
    .end local v2    # "dout":Ljava/io/ObjectOutputStream;
    .end local v3    # "ins":Ljava/io/InputStream;
    .end local v4    # "din":Ljava/io/ObjectInputStream;
    .end local v8    # "ref":Ljavassist/tools/rmi/RemoteRef;
    :cond_1
    nop

    .line 277
    if-eqz v5, :cond_2

    .line 278
    return-object v6

    .line 279
    :cond_2
    new-instance v0, Ljavassist/tools/rmi/RemoteException;

    invoke-direct {v0, v7}, Ljavassist/tools/rmi/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    .end local v5    # "result":Z
    .end local v6    # "rvalue":Ljava/lang/Object;
    .end local v7    # "errmsg":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljavassist/tools/rmi/RemoteException;

    invoke-direct {v1, v0}, Ljavassist/tools/rmi/RemoteException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 270
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 271
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljavassist/tools/rmi/RemoteException;

    invoke-direct {v1, v0}, Ljavassist/tools/rmi/RemoteException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 267
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 268
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljavassist/tools/rmi/RemoteException;

    invoke-direct {v1, v0}, Ljavassist/tools/rmi/RemoteException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 133
    :try_start_0
    invoke-virtual {p0, p1}, Ljavassist/tools/rmi/ObjectImporter;->lookupObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljavassist/tools/rmi/ObjectNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljavassist/tools/rmi/ObjectNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public lookupObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/tools/rmi/ObjectNotFoundException;
        }
    .end annotation

    .line 165
    :try_start_0
    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Ljavassist/tools/rmi/ObjectImporter;->servername:Ljava/lang/String;

    iget v2, p0, Ljavassist/tools/rmi/ObjectImporter;->port:I

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 166
    .local v0, "sock":Ljava/net/Socket;
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 167
    .local v1, "out":Ljava/io/OutputStream;
    iget-object v2, p0, Ljavassist/tools/rmi/ObjectImporter;->lookupCommand:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 168
    iget-object v2, p0, Ljavassist/tools/rmi/ObjectImporter;->endofline:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 169
    iget-object v2, p0, Ljavassist/tools/rmi/ObjectImporter;->endofline:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 171
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 172
    .local v2, "dout":Ljava/io/ObjectOutputStream;
    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    .line 175
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 176
    .local v3, "in":Ljava/io/InputStream;
    invoke-direct {p0, v3}, Ljavassist/tools/rmi/ObjectImporter;->skipHeader(Ljava/io/InputStream;)V

    .line 177
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 178
    .local v4, "din":Ljava/io/ObjectInputStream;
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v5

    .line 179
    .local v5, "n":I
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    .line 180
    .local v6, "classname":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    .line 181
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 182
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 184
    if-ltz v5, :cond_0

    .line 185
    invoke-direct {p0, v5, v6}, Ljavassist/tools/rmi/ObjectImporter;->createProxy(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    .line 190
    .end local v0    # "sock":Ljava/net/Socket;
    .end local v1    # "out":Ljava/io/OutputStream;
    .end local v2    # "dout":Ljava/io/ObjectOutputStream;
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "din":Ljava/io/ObjectInputStream;
    .end local v5    # "n":I
    .end local v6    # "classname":Ljava/lang/String;
    :cond_0
    nop

    .line 192
    new-instance v0, Ljavassist/tools/rmi/ObjectNotFoundException;

    invoke-direct {v0, p1}, Ljavassist/tools/rmi/ObjectNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 189
    new-instance v1, Ljavassist/tools/rmi/ObjectNotFoundException;

    invoke-direct {v1, p1, v0}, Ljavassist/tools/rmi/ObjectNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public setHttpProxy(Ljava/lang/String;I)V
    .locals 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "POST http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljavassist/tools/rmi/ObjectImporter;->orgServername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljavassist/tools/rmi/ObjectImporter;->orgPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "proxyHeader":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/lookup HTTP/1.0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "cmd":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iput-object v2, p0, Ljavassist/tools/rmi/ObjectImporter;->lookupCommand:[B

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/rmi HTTP/1.0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 149
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iput-object v2, p0, Ljavassist/tools/rmi/ObjectImporter;->rmiCommand:[B

    .line 150
    iput-object p1, p0, Ljavassist/tools/rmi/ObjectImporter;->servername:Ljava/lang/String;

    .line 151
    iput p2, p0, Ljavassist/tools/rmi/ObjectImporter;->port:I

    .line 152
    return-void
.end method
