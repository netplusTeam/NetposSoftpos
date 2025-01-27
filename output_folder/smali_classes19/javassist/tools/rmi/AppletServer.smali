.class public Ljavassist/tools/rmi/AppletServer;
.super Ljavassist/tools/web/Webserver;
.source "AppletServer.java"


# static fields
.field private static final okHeader:[B


# instance fields
.field private exportedNames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavassist/tools/rmi/ExportedObject;",
            ">;"
        }
    .end annotation
.end field

.field private exportedObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavassist/tools/rmi/ExportedObject;",
            ">;"
        }
    .end annotation
.end field

.field private stubGen:Ljavassist/tools/rmi/StubGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    nop

    .line 54
    const-string v0, "HTTP/1.0 200 OK\r\n\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Ljavassist/tools/rmi/AppletServer;->okHeader:[B

    .line 53
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavassist/NotFoundException;,
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 75
    invoke-static {}, Ljavassist/ClassPool;->getDefault()Ljavassist/ClassPool;

    move-result-object v0

    new-instance v1, Ljavassist/tools/rmi/StubGenerator;

    invoke-direct {v1}, Ljavassist/tools/rmi/StubGenerator;-><init>()V

    invoke-direct {p0, v0, v1, p1}, Ljavassist/tools/rmi/AppletServer;-><init>(Ljavassist/ClassPool;Ljavassist/tools/rmi/StubGenerator;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(ILjavassist/ClassPool;)V
    .locals 2
    .param p1, "port"    # I
    .param p2, "src"    # Ljavassist/ClassPool;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavassist/NotFoundException;,
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 87
    new-instance v0, Ljavassist/ClassPool;

    invoke-direct {v0, p2}, Ljavassist/ClassPool;-><init>(Ljavassist/ClassPool;)V

    new-instance v1, Ljavassist/tools/rmi/StubGenerator;

    invoke-direct {v1}, Ljavassist/tools/rmi/StubGenerator;-><init>()V

    invoke-direct {p0, v0, v1, p1}, Ljavassist/tools/rmi/AppletServer;-><init>(Ljavassist/ClassPool;Ljavassist/tools/rmi/StubGenerator;I)V

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "port"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavassist/NotFoundException;,
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 64
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Ljavassist/tools/rmi/AppletServer;-><init>(I)V

    .line 65
    return-void
.end method

.method private constructor <init>(Ljavassist/ClassPool;Ljavassist/tools/rmi/StubGenerator;I)V
    .locals 1
    .param p1, "loader"    # Ljavassist/ClassPool;
    .param p2, "gen"    # Ljavassist/tools/rmi/StubGenerator;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavassist/NotFoundException;,
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 93
    invoke-direct {p0, p3}, Ljavassist/tools/web/Webserver;-><init>(I)V

    .line 94
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljavassist/tools/rmi/AppletServer;->exportedNames:Ljava/util/Map;

    .line 95
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavassist/tools/rmi/AppletServer;->exportedObjects:Ljava/util/List;

    .line 96
    iput-object p2, p0, Ljavassist/tools/rmi/AppletServer;->stubGen:Ljavassist/tools/rmi/StubGenerator;

    .line 97
    invoke-virtual {p0, p1, p2}, Ljavassist/tools/rmi/AppletServer;->addTranslator(Ljavassist/ClassPool;Ljavassist/Translator;)V

    .line 98
    return-void
.end method

.method private convertRvalue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "rvalue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 222
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 223
    return-object v0

    .line 225
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, "classname":Ljava/lang/String;
    iget-object v2, p0, Ljavassist/tools/rmi/AppletServer;->stubGen:Ljavassist/tools/rmi/StubGenerator;

    invoke-virtual {v2, v1}, Ljavassist/tools/rmi/StubGenerator;->isProxyClass(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 227
    new-instance v2, Ljavassist/tools/rmi/RemoteRef;

    invoke-virtual {p0, v0, p1}, Ljavassist/tools/rmi/AppletServer;->exportObject(Ljava/lang/String;Ljava/lang/Object;)I

    move-result v0

    invoke-direct {v2, v0, v1}, Ljavassist/tools/rmi/RemoteRef;-><init>(ILjava/lang/String;)V

    return-object v2

    .line 228
    :cond_1
    return-object p1
.end method

.method private lookupName(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 6
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "ins"    # Ljava/io/InputStream;
    .param p3, "outs"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, p2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 235
    .local v0, "in":Ljava/io/ObjectInputStream;
    invoke-static {v0}, Ljava/io/DataInputStream;->readUTF(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Ljavassist/tools/rmi/AppletServer;->exportedNames:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavassist/tools/rmi/ExportedObject;

    .line 237
    .local v2, "found":Ljavassist/tools/rmi/ExportedObject;
    sget-object v3, Ljavassist/tools/rmi/AppletServer;->okHeader:[B

    invoke-virtual {p3, v3}, Ljava/io/OutputStream;->write([B)V

    .line 238
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, p3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 239
    .local v3, "out":Ljava/io/ObjectOutputStream;
    if-nez v2, :cond_0

    .line 240
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "not found."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljavassist/tools/rmi/AppletServer;->logging2(Ljava/lang/String;)V

    .line 241
    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 242
    const-string v4, "error"

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :cond_0
    invoke-virtual {p0, v1}, Ljavassist/tools/rmi/AppletServer;->logging2(Ljava/lang/String;)V

    .line 246
    iget v4, v2, Ljavassist/tools/rmi/ExportedObject;->identifier:I

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 247
    iget-object v4, v2, Ljavassist/tools/rmi/ExportedObject;->object:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 250
    :goto_0
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V

    .line 251
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V

    .line 252
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V

    .line 253
    return-void
.end method

.method private processRMI(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 9
    .param p1, "ins"    # Ljava/io/InputStream;
    .param p2, "outs"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 160
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 162
    .local v0, "in":Ljava/io/ObjectInputStream;
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 163
    .local v1, "objectId":I
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    .line 164
    .local v2, "methodId":I
    const/4 v3, 0x0

    .line 165
    .local v3, "err":Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 167
    .local v4, "rvalue":Ljava/lang/Object;
    :try_start_0
    iget-object v5, p0, Ljavassist/tools/rmi/AppletServer;->exportedObjects:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavassist/tools/rmi/ExportedObject;

    .line 168
    .local v5, "eo":Ljavassist/tools/rmi/ExportedObject;
    invoke-direct {p0, v0}, Ljavassist/tools/rmi/AppletServer;->readParameters(Ljava/io/ObjectInputStream;)[Ljava/lang/Object;

    move-result-object v6

    .line 169
    .local v6, "args":[Ljava/lang/Object;
    iget-object v7, v5, Ljavassist/tools/rmi/ExportedObject;->methods:[Ljava/lang/reflect/Method;

    aget-object v7, v7, v2

    iget-object v8, v5, Ljavassist/tools/rmi/ExportedObject;->object:Ljava/lang/Object;

    invoke-virtual {v7, v8, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {p0, v7}, Ljavassist/tools/rmi/AppletServer;->convertRvalue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v7

    .line 175
    .end local v5    # "eo":Ljavassist/tools/rmi/ExportedObject;
    .end local v6    # "args":[Ljava/lang/Object;
    goto :goto_0

    .line 172
    :catch_0
    move-exception v5

    .line 173
    .local v5, "e":Ljava/lang/Exception;
    move-object v3, v5

    .line 174
    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljavassist/tools/rmi/AppletServer;->logging2(Ljava/lang/String;)V

    .line 177
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_0
    sget-object v5, Ljavassist/tools/rmi/AppletServer;->okHeader:[B

    invoke-virtual {p2, v5}, Ljava/io/OutputStream;->write([B)V

    .line 178
    new-instance v5, Ljava/io/ObjectOutputStream;

    invoke-direct {v5, p2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 179
    .local v5, "out":Ljava/io/ObjectOutputStream;
    if-eqz v3, :cond_0

    .line 180
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 181
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_2

    .line 185
    :cond_0
    const/4 v6, 0x1

    :try_start_1
    invoke-virtual {v5, v6}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 186
    invoke-virtual {v5, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/NotSerializableException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/InvalidClassException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 191
    :catch_1
    move-exception v6

    .line 192
    .local v6, "e":Ljava/io/InvalidClassException;
    invoke-virtual {v6}, Ljava/io/InvalidClassException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljavassist/tools/rmi/AppletServer;->logging2(Ljava/lang/String;)V

    goto :goto_2

    .line 188
    .end local v6    # "e":Ljava/io/InvalidClassException;
    :catch_2
    move-exception v6

    .line 189
    .local v6, "e":Ljava/io/NotSerializableException;
    invoke-virtual {v6}, Ljava/io/NotSerializableException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljavassist/tools/rmi/AppletServer;->logging2(Ljava/lang/String;)V

    .line 193
    .end local v6    # "e":Ljava/io/NotSerializableException;
    :goto_1
    nop

    .line 195
    :goto_2
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->flush()V

    .line 196
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V

    .line 197
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V

    .line 198
    return-void
.end method

.method private readParameters(Ljava/io/ObjectInputStream;)[Ljava/lang/Object;
    .locals 7
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 203
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 204
    .local v0, "n":I
    new-array v1, v0, [Ljava/lang/Object;

    .line 205
    .local v1, "args":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 206
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 207
    .local v3, "a":Ljava/lang/Object;
    instance-of v4, v3, Ljavassist/tools/rmi/RemoteRef;

    if-eqz v4, :cond_0

    .line 208
    move-object v4, v3

    check-cast v4, Ljavassist/tools/rmi/RemoteRef;

    .line 209
    .local v4, "ref":Ljavassist/tools/rmi/RemoteRef;
    iget-object v5, p0, Ljavassist/tools/rmi/AppletServer;->exportedObjects:Ljava/util/List;

    iget v6, v4, Ljavassist/tools/rmi/RemoteRef;->oid:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavassist/tools/rmi/ExportedObject;

    .line 210
    .local v5, "eo":Ljavassist/tools/rmi/ExportedObject;
    iget-object v3, v5, Ljavassist/tools/rmi/ExportedObject;->object:Ljava/lang/Object;

    .line 213
    .end local v4    # "ref":Ljavassist/tools/rmi/RemoteRef;
    .end local v5    # "eo":Ljavassist/tools/rmi/ExportedObject;
    :cond_0
    aput-object v3, v1, v2

    .line 205
    .end local v3    # "a":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 216
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method


# virtual methods
.method public doReply(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavassist/tools/web/BadHttpRequest;
        }
    .end annotation

    .line 149
    const-string v0, "POST /rmi "

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-direct {p0, p1, p2}, Ljavassist/tools/rmi/AppletServer;->processRMI(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_0

    .line 151
    :cond_0
    const-string v0, "POST /lookup "

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    invoke-direct {p0, p3, p1, p2}, Ljavassist/tools/rmi/AppletServer;->lookupName(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_0

    .line 154
    :cond_1
    invoke-super {p0, p1, p2, p3}, Ljavassist/tools/web/Webserver;->doReply(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 155
    :goto_0
    return-void
.end method

.method public declared-synchronized exportObject(Ljava/lang/String;Ljava/lang/Object;)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    monitor-enter p0

    .line 123
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 124
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Ljavassist/tools/rmi/ExportedObject;

    invoke-direct {v1}, Ljavassist/tools/rmi/ExportedObject;-><init>()V

    .line 125
    .local v1, "eo":Ljavassist/tools/rmi/ExportedObject;
    iput-object p2, v1, Ljavassist/tools/rmi/ExportedObject;->object:Ljava/lang/Object;

    .line 126
    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, v1, Ljavassist/tools/rmi/ExportedObject;->methods:[Ljava/lang/reflect/Method;

    .line 127
    iget-object v2, p0, Ljavassist/tools/rmi/AppletServer;->exportedObjects:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v2, p0, Ljavassist/tools/rmi/AppletServer;->exportedObjects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Ljavassist/tools/rmi/ExportedObject;->identifier:I

    .line 129
    if-eqz p1, :cond_0

    .line 130
    iget-object v2, p0, Ljavassist/tools/rmi/AppletServer;->exportedNames:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    .end local p0    # "this":Ljavassist/tools/rmi/AppletServer;
    :cond_0
    :try_start_1
    iget-object v2, p0, Ljavassist/tools/rmi/AppletServer;->stubGen:Ljavassist/tools/rmi/StubGenerator;

    invoke-virtual {v2, v0}, Ljavassist/tools/rmi/StubGenerator;->makeProxyClass(Ljava/lang/Class;)Z
    :try_end_1
    .catch Ljavassist/NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    nop

    .line 139
    :try_start_2
    iget v2, v1, Ljavassist/tools/rmi/ExportedObject;->identifier:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v2

    .line 135
    :catch_0
    move-exception v2

    .line 136
    .local v2, "e":Ljavassist/NotFoundException;
    :try_start_3
    new-instance v3, Ljavassist/CannotCompileException;

    invoke-direct {v3, v2}, Ljavassist/CannotCompileException;-><init>(Ljavassist/NotFoundException;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 122
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "eo":Ljavassist/tools/rmi/ExportedObject;
    .end local v2    # "e":Ljavassist/NotFoundException;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "obj":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public run()V
    .locals 0

    .line 105
    invoke-super {p0}, Ljavassist/tools/web/Webserver;->run()V

    .line 106
    return-void
.end method
