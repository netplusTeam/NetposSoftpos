.class public Lorg/apache/sshd/server/auth/gss/UserAuthGSS;
.super Lorg/apache/sshd/server/auth/AbstractUserAuth;
.source "UserAuthGSS.java"


# static fields
.field public static final KRB5_MECH:Lorg/ietf/jgss/Oid;

.field public static final KRB5_NT_PRINCIPAL:Lorg/ietf/jgss/Oid;

.field public static final NAME:Ljava/lang/String; = "gssapi-with-mic"


# instance fields
.field private context:Lorg/ietf/jgss/GSSContext;

.field private identity:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-string v0, "1.2.840.113554.1.2.2"

    invoke-static {v0}, Lorg/apache/sshd/server/auth/gss/UserAuthGSS;->createOID(Ljava/lang/String;)Lorg/ietf/jgss/Oid;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/server/auth/gss/UserAuthGSS;->KRB5_MECH:Lorg/ietf/jgss/Oid;

    .line 50
    const-string v0, "1.2.840.113554.1.2.2.1"

    invoke-static {v0}, Lorg/apache/sshd/server/auth/gss/UserAuthGSS;->createOID(Ljava/lang/String;)Lorg/ietf/jgss/Oid;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/server/auth/gss/UserAuthGSS;->KRB5_NT_PRINCIPAL:Lorg/ietf/jgss/Oid;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    const-string v0, "gssapi-with-mic"

    invoke-direct {p0, v0}, Lorg/apache/sshd/server/auth/AbstractUserAuth;-><init>(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static createOID(Ljava/lang/String;)Lorg/ietf/jgss/Oid;
    .locals 2
    .param p0, "rep"    # Ljava/lang/String;

    .line 217
    :try_start_0
    new-instance v0, Lorg/ietf/jgss/Oid;

    invoke-direct {v0, p0}, Lorg/ietf/jgss/Oid;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/ietf/jgss/GSSException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 218
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Lorg/ietf/jgss/GSSException;
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public destroy()V
    .locals 6

    .line 196
    iget-object v0, p0, Lorg/apache/sshd/server/auth/gss/UserAuthGSS;->context:Lorg/ietf/jgss/GSSContext;

    if-eqz v0, :cond_1

    .line 198
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0}, Lorg/ietf/jgss/GSSContext;->dispose()V
    :try_end_0
    .catch Lorg/ietf/jgss/GSSException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :cond_0
    :goto_0
    iput-object v1, p0, Lorg/apache/sshd/server/auth/gss/UserAuthGSS;->context:Lorg/ietf/jgss/GSSContext;

    .line 205
    goto :goto_2

    .line 204
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Lorg/ietf/jgss/GSSException;
    :try_start_1
    iget-object v2, p0, Lorg/apache/sshd/server/auth/gss/UserAuthGSS;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    iget-object v2, p0, Lorg/apache/sshd/server/auth/gss/UserAuthGSS;->log:Lorg/slf4j/Logger;

    const-string v3, "Failed ({}) to dispose of context: {}"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/ietf/jgss/GSSException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 204
    .end local v0    # "e":Lorg/ietf/jgss/GSSException;
    :goto_1
    iput-object v1, p0, Lorg/apache/sshd/server/auth/gss/UserAuthGSS;->context:Lorg/ietf/jgss/GSSContext;

    .line 205
    throw v0

    .line 207
    :cond_1
    :goto_2
    return-void
.end method

.method protected doAuth(Lorg/apache/sshd/common/util/buffer/Buffer;Z)Ljava/lang/Boolean;
    .locals 25
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .param p2, "initial"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 64
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/server/auth/gss/UserAuthGSS;->getServerSession()Lorg/apache/sshd/server/session/ServerSession;

    move-result-object v2

    .line 65
    .local v2, "session":Lorg/apache/sshd/server/session/ServerSession;
    invoke-interface {v2}, Lorg/apache/sshd/server/session/ServerSession;->getGSSAuthenticator()Lorg/apache/sshd/server/auth/gss/GSSAuthenticator;

    move-result-object v0

    const-string v3, "No GSSAuthenticator configured"

    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lorg/apache/sshd/server/auth/gss/GSSAuthenticator;

    .line 66
    .local v3, "auth":Lorg/apache/sshd/server/auth/gss/GSSAuthenticator;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/server/auth/gss/UserAuthGSS;->getUsername()Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, "user":Ljava/lang/String;
    iget-object v0, v1, Lorg/apache/sshd/server/auth/gss/UserAuthGSS;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v5

    .line 69
    .local v5, "debugEnabled":Z
    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz p2, :cond_7

    .line 71
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getInt()I

    move-result v11

    .line 73
    .local v11, "num":I
    if-ltz v11, :cond_6

    const v12, 0x8000

    if-gt v11, v12, :cond_6

    .line 78
    iget-object v12, v1, Lorg/apache/sshd/server/auth/gss/UserAuthGSS;->log:Lorg/slf4j/Logger;

    invoke-interface {v12}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v12

    .line 79
    .local v12, "traceEnabled":Z
    const/4 v13, 0x1

    .local v13, "i":I
    :goto_0
    if-gt v13, v11, :cond_5

    .line 80
    new-instance v14, Lorg/ietf/jgss/Oid;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getBytes()[B

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/ietf/jgss/Oid;-><init>([B)V

    .line 81
    .local v14, "oid":Lorg/ietf/jgss/Oid;
    sget-object v15, Lorg/apache/sshd/server/auth/gss/UserAuthGSS;->KRB5_MECH:Lorg/ietf/jgss/Oid;

    invoke-virtual {v14, v15}, Lorg/ietf/jgss/Oid;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 82
    if-eqz v12, :cond_0

    .line 83
    iget-object v15, v1, Lorg/apache/sshd/server/auth/gss/UserAuthGSS;->log:Lorg/slf4j/Logger;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v4, v0, v10

    aput-object v2, v0, v9

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v0, v8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v0, v7

    aput-object v14, v0, v6

    const-string v7, "doAuth({}@{}) skip OID {}/{}: {}"

    invoke-interface {v15, v7, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    .end local v14    # "oid":Lorg/ietf/jgss/Oid;
    :cond_0
    add-int/lit8 v13, v13, 0x1

    const/4 v7, 0x3

    goto :goto_0

    .line 87
    .restart local v14    # "oid":Lorg/ietf/jgss/Oid;
    :cond_1
    if-eqz v5, :cond_2

    .line 88
    iget-object v0, v1, Lorg/apache/sshd/server/auth/gss/UserAuthGSS;->log:Lorg/slf4j/Logger;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v10

    aput-object v2, v6, v9

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v6, v8

    const-string v7, "doAuth({}@{}) found Kerberos 5 after {}/{} OID(s)"

    invoke-interface {v0, v7, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    :cond_2
    invoke-virtual {v3, v2, v4}, Lorg/apache/sshd/server/auth/gss/GSSAuthenticator;->validateInitialUser(Lorg/apache/sshd/server/session/ServerSession;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 93
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 96
    :cond_3
    invoke-virtual {v3}, Lorg/apache/sshd/server/auth/gss/GSSAuthenticator;->getGSSManager()Lorg/ietf/jgss/GSSManager;

    move-result-object v0

    .line 97
    .local v0, "mgr":Lorg/ietf/jgss/GSSManager;
    invoke-virtual {v3, v0}, Lorg/apache/sshd/server/auth/gss/GSSAuthenticator;->getGSSCredential(Lorg/ietf/jgss/GSSManager;)Lorg/ietf/jgss/GSSCredential;

    move-result-object v6

    .line 98
    .local v6, "creds":Lorg/ietf/jgss/GSSCredential;
    if-nez v6, :cond_4

    .line 99
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v7

    .line 102
    :cond_4
    invoke-virtual {v0, v6}, Lorg/ietf/jgss/GSSManager;->createContext(Lorg/ietf/jgss/GSSCredential;)Lorg/ietf/jgss/GSSContext;

    move-result-object v7

    iput-object v7, v1, Lorg/apache/sshd/server/auth/gss/UserAuthGSS;->context:Lorg/ietf/jgss/GSSContext;

    .line 106
    invoke-virtual {v14}, Lorg/ietf/jgss/Oid;->getDER()[B

    move-result-object v7

    .line 107
    .local v7, "out":[B
    const/16 v8, 0x3c

    array-length v9, v7

    add-int/lit8 v9, v9, 0x20

    invoke-interface {v2, v8, v9}, Lorg/apache/sshd/server/session/ServerSession;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v8

    .line 108
    .local v8, "b":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {v8, v7}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([B)V

    .line 109
    invoke-interface {v2, v8}, Lorg/apache/sshd/server/session/ServerSession;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 111
    const/4 v9, 0x0

    return-object v9

    .line 115
    .end local v0    # "mgr":Lorg/ietf/jgss/GSSManager;
    .end local v6    # "creds":Lorg/ietf/jgss/GSSCredential;
    .end local v7    # "out":[B
    .end local v8    # "b":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local v13    # "i":I
    .end local v14    # "oid":Lorg/ietf/jgss/Oid;
    :cond_5
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 74
    .end local v12    # "traceEnabled":Z
    :cond_6
    iget-object v0, v1, Lorg/apache/sshd/server/auth/gss/UserAuthGSS;->log:Lorg/slf4j/Logger;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v10

    aput-object v2, v6, v9

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    const-string v7, "doAuth({}@{}) Illogical OID entries count: {}"

    invoke-interface {v0, v7, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illogical OID entries count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    .end local v11    # "num":I
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getUByte()I

    move-result v7

    .line 118
    .local v7, "msg":I
    const/16 v0, 0x42

    const/16 v11, 0x3d

    if-eq v7, v11, :cond_9

    if-ne v7, v0, :cond_8

    iget-object v12, v1, Lorg/apache/sshd/server/auth/gss/UserAuthGSS;->context:Lorg/ietf/jgss/GSSContext;

    .line 119
    invoke-interface {v12}, Lorg/ietf/jgss/GSSContext;->isEstablished()Z

    move-result v12

    if-eqz v12, :cond_8

    goto :goto_1

    .line 120
    :cond_8
    new-instance v0, Lorg/apache/sshd/common/SshException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Packet not supported by user authentication method: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 121
    invoke-static {v7}, Lorg/apache/sshd/common/SshConstants;->getCommandMessageName(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v8, v6}, Lorg/apache/sshd/common/SshException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 124
    :cond_9
    :goto_1
    if-eqz v5, :cond_a

    .line 125
    iget-object v12, v1, Lorg/apache/sshd/server/auth/gss/UserAuthGSS;->log:Lorg/slf4j/Logger;

    const/4 v13, 0x3

    new-array v14, v13, [Ljava/lang/Object;

    aput-object v4, v14, v10

    aput-object v2, v14, v9

    invoke-static {v7}, Lorg/apache/sshd/common/SshConstants;->getCommandMessageName(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v14, v8

    const-string v13, "doAuth({}@{}) In krb5.next: msg = {}"

    invoke-interface {v12, v13, v14}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    :cond_a
    iget-object v12, v1, Lorg/apache/sshd/server/auth/gss/UserAuthGSS;->context:Lorg/ietf/jgss/GSSContext;

    invoke-interface {v12}, Lorg/ietf/jgss/GSSContext;->isEstablished()Z

    move-result v12

    if-eqz v12, :cond_e

    .line 131
    if-eq v7, v0, :cond_b

    .line 132
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 137
    :cond_b
    new-instance v0, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    invoke-direct {v0}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>()V

    move-object v11, v0

    .line 138
    .local v11, "msgbuf":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-interface {v2}, Lorg/apache/sshd/server/session/ServerSession;->getSessionId()[B

    move-result-object v0

    const-string v12, "No current session ID"

    invoke-static {v0, v12}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty([BLjava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([B)V

    .line 139
    const/16 v0, 0x32

    invoke-virtual {v11, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->putByte(B)V

    .line 140
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/server/auth/gss/UserAuthGSS;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 141
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/server/auth/gss/UserAuthGSS;->getService()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/server/auth/gss/UserAuthGSS;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v11}, Lorg/apache/sshd/common/util/buffer/Buffer;->getCompactData()[B

    move-result-object v12

    .line 145
    .local v12, "msgbytes":[B
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getBytes()[B

    move-result-object v13

    .line 147
    .local v13, "inmic":[B
    :try_start_0
    iget-object v0, v1, Lorg/apache/sshd/server/auth/gss/UserAuthGSS;->context:Lorg/ietf/jgss/GSSContext;

    const/16 v19, 0x0

    array-length v14, v13

    const/16 v22, 0x0

    array-length v15, v12

    new-instance v8, Lorg/ietf/jgss/MessageProp;

    invoke-direct {v8, v10}, Lorg/ietf/jgss/MessageProp;-><init>(Z)V

    move-object/from16 v17, v0

    move-object/from16 v18, v13

    move/from16 v20, v14

    move-object/from16 v21, v12

    move/from16 v23, v15

    move-object/from16 v24, v8

    invoke-interface/range {v17 .. v24}, Lorg/ietf/jgss/GSSContext;->verifyMIC([BII[BIILorg/ietf/jgss/MessageProp;)V

    .line 148
    if-eqz v5, :cond_c

    .line 149
    iget-object v0, v1, Lorg/apache/sshd/server/auth/gss/UserAuthGSS;->log:Lorg/slf4j/Logger;

    const-string v8, "doAuth({}@{}) MIC verified"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/server/auth/gss/UserAuthGSS;->getUsername()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v0, v8, v14, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 151
    :cond_c
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Lorg/ietf/jgss/GSSException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Lorg/ietf/jgss/GSSException;
    if-eqz v5, :cond_d

    .line 154
    iget-object v8, v1, Lorg/apache/sshd/server/auth/gss/UserAuthGSS;->log:Lorg/slf4j/Logger;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v10

    aput-object v2, v6, v9

    .line 155
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v6, v10

    invoke-virtual {v0}, Lorg/ietf/jgss/GSSException;->getMessage()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    aput-object v9, v6, v10

    .line 154
    const-string v9, "doAuth({}@{}) GSS verification {} error: {}"

    invoke-interface {v8, v9, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    :cond_d
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v6

    .line 161
    .end local v0    # "e":Lorg/ietf/jgss/GSSException;
    .end local v11    # "msgbuf":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local v12    # "msgbytes":[B
    .end local v13    # "inmic":[B
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getBytes()[B

    move-result-object v0

    .line 162
    .local v0, "tok":[B
    iget-object v6, v1, Lorg/apache/sshd/server/auth/gss/UserAuthGSS;->context:Lorg/ietf/jgss/GSSContext;

    array-length v8, v0

    invoke-interface {v6, v0, v10, v8}, Lorg/ietf/jgss/GSSContext;->acceptSecContext([BII)[B

    move-result-object v6

    .line 163
    .local v6, "out":[B
    iget-object v8, v1, Lorg/apache/sshd/server/auth/gss/UserAuthGSS;->context:Lorg/ietf/jgss/GSSContext;

    invoke-interface {v8}, Lorg/ietf/jgss/GSSContext;->isEstablished()Z

    move-result v8

    .line 166
    .local v8, "established":Z
    if-eqz v8, :cond_10

    iget-object v12, v1, Lorg/apache/sshd/server/auth/gss/UserAuthGSS;->identity:Ljava/lang/String;

    if-nez v12, :cond_10

    .line 167
    iget-object v12, v1, Lorg/apache/sshd/server/auth/gss/UserAuthGSS;->context:Lorg/ietf/jgss/GSSContext;

    invoke-interface {v12}, Lorg/ietf/jgss/GSSContext;->getSrcName()Lorg/ietf/jgss/GSSName;

    move-result-object v12

    .line 168
    .local v12, "srcName":Lorg/ietf/jgss/GSSName;
    invoke-interface {v12}, Lorg/ietf/jgss/GSSName;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v1, Lorg/apache/sshd/server/auth/gss/UserAuthGSS;->identity:Ljava/lang/String;

    .line 169
    if-eqz v5, :cond_f

    .line 170
    iget-object v13, v1, Lorg/apache/sshd/server/auth/gss/UserAuthGSS;->log:Lorg/slf4j/Logger;

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v4, v14, v10

    aput-object v2, v14, v9

    iget-object v9, v1, Lorg/apache/sshd/server/auth/gss/UserAuthGSS;->identity:Ljava/lang/String;

    const/4 v10, 0x2

    aput-object v9, v14, v10

    const-string v9, "doAuth({}@{}) GSS identity is {}"

    invoke-interface {v13, v9, v14}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    :cond_f
    iget-object v9, v1, Lorg/apache/sshd/server/auth/gss/UserAuthGSS;->identity:Ljava/lang/String;

    invoke-virtual {v3, v2, v9}, Lorg/apache/sshd/server/auth/gss/GSSAuthenticator;->validateIdentity(Lorg/apache/sshd/server/session/ServerSession;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_10

    .line 174
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v9

    .line 179
    .end local v12    # "srcName":Lorg/ietf/jgss/GSSName;
    :cond_10
    invoke-static {v6}, Lorg/apache/sshd/common/util/NumberUtils;->length([B)I

    move-result v9

    if-lez v9, :cond_11

    .line 180
    array-length v9, v6

    add-int/lit8 v9, v9, 0x20

    invoke-interface {v2, v11, v9}, Lorg/apache/sshd/server/session/ServerSession;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v9

    .line 181
    .local v9, "b":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {v9, v6}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([B)V

    .line 182
    invoke-interface {v2, v9}, Lorg/apache/sshd/server/session/ServerSession;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 183
    const/4 v10, 0x0

    return-object v10

    .line 185
    .end local v9    # "b":Lorg/apache/sshd/common/util/buffer/Buffer;
    :cond_11
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    return-object v9
.end method
