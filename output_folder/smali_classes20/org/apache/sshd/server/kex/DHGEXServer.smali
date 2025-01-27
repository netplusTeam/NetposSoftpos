.class public Lorg/apache/sshd/server/kex/DHGEXServer;
.super Lorg/apache/sshd/server/kex/AbstractDHServerKeyExchange;
.source "DHGEXServer.java"


# static fields
.field public static final PROP_DHGEX_SERVER_MAX_KEY:Ljava/lang/String; = "dhgex-server-max"

.field public static final PROP_DHGEX_SERVER_MIN_KEY:Ljava/lang/String; = "dhgex-server-min"


# instance fields
.field protected dh:Lorg/apache/sshd/common/kex/DHG;

.field protected expected:B

.field protected final factory:Lorg/apache/sshd/common/kex/DHFactory;

.field protected max:I

.field protected min:I

.field protected oldRequest:Z

.field protected prf:I


# direct methods
.method protected constructor <init>(Lorg/apache/sshd/common/kex/DHFactory;Lorg/apache/sshd/common/session/Session;)V
    .locals 1
    .param p1, "factory"    # Lorg/apache/sshd/common/kex/DHFactory;
    .param p2, "session"    # Lorg/apache/sshd/common/session/Session;

    .line 71
    invoke-direct {p0, p2}, Lorg/apache/sshd/server/kex/AbstractDHServerKeyExchange;-><init>(Lorg/apache/sshd/common/session/Session;)V

    .line 72
    const-string v0, "No factory"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/kex/DHFactory;

    iput-object v0, p0, Lorg/apache/sshd/server/kex/DHGEXServer;->factory:Lorg/apache/sshd/common/kex/DHFactory;

    .line 73
    return-void
.end method

.method public static newFactory(Lorg/apache/sshd/common/kex/DHFactory;)Lorg/apache/sshd/common/kex/KeyExchangeFactory;
    .locals 1
    .param p0, "factory"    # Lorg/apache/sshd/common/kex/DHFactory;

    .line 81
    new-instance v0, Lorg/apache/sshd/server/kex/DHGEXServer$1;

    invoke-direct {v0, p0}, Lorg/apache/sshd/server/kex/DHGEXServer$1;-><init>(Lorg/apache/sshd/common/kex/DHFactory;)V

    return-object v0
.end method


# virtual methods
.method protected chooseDH(III)Lorg/apache/sshd/common/kex/DHG;
    .locals 22
    .param p1, "min"    # I
    .param p2, "prf"    # I
    .param p3, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 257
    move-object/from16 v0, p0

    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getMaxDHGroupExchangeKeySize()I

    move-result v1

    .line 258
    .local v1, "maxDHGroupExchangeKeySize":I
    const/16 v2, 0x400

    move/from16 v3, p1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 259
    .end local p1    # "min":I
    .local v3, "min":I
    move/from16 v4, p2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 260
    .end local p2    # "prf":I
    .local v2, "prf":I
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 261
    move/from16 v4, p3

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 263
    .end local p3    # "max":I
    .local v4, "max":I
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/server/kex/DHGEXServer;->loadModuliGroups()Ljava/util/List;

    move-result-object v5

    .line 264
    .local v5, "groups":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/server/kex/Moduli$DhGroup;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/server/kex/DHGEXServer;->getServerSession()Lorg/apache/sshd/server/session/ServerSession;

    move-result-object v6

    .line 265
    .local v6, "session":Lorg/apache/sshd/common/session/Session;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v7, "selected":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/server/kex/Moduli$DhGroup;>;"
    const/4 v8, 0x0

    .line 267
    .local v8, "bestSize":I
    iget-object v9, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->log:Lorg/slf4j/Logger;

    invoke-interface {v9}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v9

    .line 268
    .local v9, "traceEnabled":Z
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const-string v12, "chooseDH({})[{}][prf={}, min={}, max={}] selected {}"

    const/16 v16, 0x2

    const/16 v17, 0x1

    const/16 v18, 0x0

    if-eqz v11, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/sshd/server/kex/Moduli$DhGroup;

    .line 269
    .local v11, "group":Lorg/apache/sshd/server/kex/Moduli$DhGroup;
    invoke-virtual {v11}, Lorg/apache/sshd/server/kex/Moduli$DhGroup;->getSize()I

    move-result v13

    .line 270
    .local v13, "size":I
    if-lt v13, v3, :cond_7

    if-le v13, v4, :cond_0

    move/from16 v20, v1

    goto/16 :goto_3

    .line 278
    :cond_0
    if-le v13, v2, :cond_1

    if-lt v13, v8, :cond_2

    :cond_1
    if-le v13, v8, :cond_4

    if-ge v8, v2, :cond_4

    .line 279
    :cond_2
    move v8, v13

    .line 280
    if-eqz v9, :cond_3

    .line 281
    iget-object v14, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->log:Lorg/slf4j/Logger;

    const/4 v15, 0x7

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v0, v15, v18

    aput-object v6, v15, v17

    .line 282
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v15, v16

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v19, 0x3

    aput-object v20, v15, v19

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x4

    aput-object v20, v15, v21

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v21, 0x5

    aput-object v20, v15, v21

    const/16 v20, 0x6

    aput-object v11, v15, v20

    .line 281
    move/from16 v20, v1

    .end local v1    # "maxDHGroupExchangeKeySize":I
    .local v20, "maxDHGroupExchangeKeySize":I
    const-string v1, "chooseDH({})[{}][prf={}, min={}, max={}] new best size={} from group={}"

    invoke-interface {v14, v1, v15}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 280
    .end local v20    # "maxDHGroupExchangeKeySize":I
    .restart local v1    # "maxDHGroupExchangeKeySize":I
    :cond_3
    move/from16 v20, v1

    .line 284
    .end local v1    # "maxDHGroupExchangeKeySize":I
    .restart local v20    # "maxDHGroupExchangeKeySize":I
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->clear()V

    goto :goto_2

    .line 278
    .end local v20    # "maxDHGroupExchangeKeySize":I
    .restart local v1    # "maxDHGroupExchangeKeySize":I
    :cond_4
    move/from16 v20, v1

    .line 287
    .end local v1    # "maxDHGroupExchangeKeySize":I
    .restart local v20    # "maxDHGroupExchangeKeySize":I
    :goto_2
    if-ne v13, v8, :cond_6

    .line 288
    if-eqz v9, :cond_5

    .line 289
    iget-object v1, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->log:Lorg/slf4j/Logger;

    const/4 v14, 0x6

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v0, v14, v18

    aput-object v6, v14, v17

    .line 290
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v14, v16

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x3

    aput-object v15, v14, v16

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x4

    aput-object v15, v14, v16

    const/4 v15, 0x5

    aput-object v11, v14, v15

    .line 289
    invoke-interface {v1, v12, v14}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    :cond_5
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    .end local v11    # "group":Lorg/apache/sshd/server/kex/Moduli$DhGroup;
    .end local v13    # "size":I
    :cond_6
    move/from16 v1, v20

    goto/16 :goto_0

    .line 270
    .end local v20    # "maxDHGroupExchangeKeySize":I
    .restart local v1    # "maxDHGroupExchangeKeySize":I
    .restart local v11    # "group":Lorg/apache/sshd/server/kex/Moduli$DhGroup;
    .restart local v13    # "size":I
    :cond_7
    move/from16 v20, v1

    .line 271
    .end local v1    # "maxDHGroupExchangeKeySize":I
    .restart local v20    # "maxDHGroupExchangeKeySize":I
    :goto_3
    if-eqz v9, :cond_8

    .line 272
    iget-object v1, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->log:Lorg/slf4j/Logger;

    const/4 v12, 0x5

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v0, v12, v18

    aput-object v6, v12, v17

    aput-object v11, v12, v16

    .line 273
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x3

    aput-object v14, v12, v15

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x4

    aput-object v14, v12, v15

    .line 272
    const-string v14, "chooseDH({})[{}] - skip group={} - size not in range [{}-{}]"

    invoke-interface {v1, v14, v12}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    .end local v11    # "group":Lorg/apache/sshd/server/kex/Moduli$DhGroup;
    .end local v13    # "size":I
    :cond_8
    move/from16 v1, v20

    goto/16 :goto_0

    .line 296
    .end local v20    # "maxDHGroupExchangeKeySize":I
    .restart local v1    # "maxDHGroupExchangeKeySize":I
    :cond_9
    move/from16 v20, v1

    .end local v1    # "maxDHGroupExchangeKeySize":I
    .restart local v20    # "maxDHGroupExchangeKeySize":I
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 297
    iget-object v1, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->log:Lorg/slf4j/Logger;

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v0, v10, v18

    aput-object v6, v10, v17

    .line 298
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v16

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x3

    aput-object v11, v10, v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x4

    aput-object v11, v10, v12

    .line 297
    const-string v11, "chooseDH({})[{}][prf={}, min={}, max={}] No suitable primes found, defaulting to DHG1"

    invoke-interface {v1, v11, v10}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    new-instance v1, Ljava/math/BigInteger;

    invoke-static {}, Lorg/apache/sshd/common/kex/DHGroupData;->getP1()[B

    move-result-object v10

    invoke-direct {v1, v10}, Ljava/math/BigInteger;-><init>([B)V

    new-instance v10, Ljava/math/BigInteger;

    invoke-static {}, Lorg/apache/sshd/common/kex/DHGroupData;->getG()[B

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v0, v1, v10}, Lorg/apache/sshd/server/kex/DHGEXServer;->getDH(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/apache/sshd/common/kex/DHG;

    move-result-object v1

    return-object v1

    .line 302
    :cond_a
    invoke-interface {v6}, Lorg/apache/sshd/common/session/Session;->getFactoryManager()Lorg/apache/sshd/common/FactoryManager;

    move-result-object v1

    const-string v10, "No factory manager"

    invoke-static {v1, v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/FactoryManager;

    .line 303
    .local v1, "manager":Lorg/apache/sshd/common/FactoryManager;
    invoke-interface {v1}, Lorg/apache/sshd/common/FactoryManager;->getRandomFactory()Lorg/apache/sshd/common/Factory;

    move-result-object v10

    const-string v11, "No random factory"

    invoke-static {v10, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/sshd/common/Factory;

    .line 304
    .local v10, "factory":Lorg/apache/sshd/common/Factory;, "Lorg/apache/sshd/common/Factory<Lorg/apache/sshd/common/random/Random;>;"
    invoke-interface {v10}, Lorg/apache/sshd/common/Factory;->create()Ljava/lang/Object;

    move-result-object v11

    const-string v13, "No random generator"

    invoke-static {v11, v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/sshd/common/random/Random;

    .line 305
    .local v11, "random":Lorg/apache/sshd/common/random/Random;
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    invoke-interface {v11, v13}, Lorg/apache/sshd/common/random/Random;->random(I)I

    move-result v13

    .line 306
    .local v13, "which":I
    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/sshd/server/kex/Moduli$DhGroup;

    .line 307
    .local v14, "group":Lorg/apache/sshd/server/kex/Moduli$DhGroup;
    if-eqz v9, :cond_b

    .line 308
    iget-object v15, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->log:Lorg/slf4j/Logger;

    move-object/from16 v21, v1

    const/4 v1, 0x6

    .end local v1    # "manager":Lorg/apache/sshd/common/FactoryManager;
    .local v21, "manager":Lorg/apache/sshd/common/FactoryManager;
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v18

    aput-object v6, v1, v17

    .line 309
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v1, v16

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x3

    aput-object v16, v1, v17

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x4

    aput-object v16, v1, v17

    const/16 v16, 0x5

    aput-object v14, v1, v16

    .line 308
    invoke-interface {v15, v12, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    .line 307
    .end local v21    # "manager":Lorg/apache/sshd/common/FactoryManager;
    .restart local v1    # "manager":Lorg/apache/sshd/common/FactoryManager;
    :cond_b
    move-object/from16 v21, v1

    .line 311
    .end local v1    # "manager":Lorg/apache/sshd/common/FactoryManager;
    .restart local v21    # "manager":Lorg/apache/sshd/common/FactoryManager;
    :goto_4
    invoke-virtual {v14}, Lorg/apache/sshd/server/kex/Moduli$DhGroup;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v14}, Lorg/apache/sshd/server/kex/Moduli$DhGroup;->getG()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v0, v1, v12}, Lorg/apache/sshd/server/kex/DHGEXServer;->getDH(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/apache/sshd/common/kex/DHG;

    move-result-object v1

    return-object v1
.end method

.method protected getDH(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/apache/sshd/common/kex/DHG;
    .locals 3
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "g"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lorg/apache/sshd/server/kex/DHGEXServer;->factory:Lorg/apache/sshd/common/kex/DHFactory;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-interface {v0, v1}, Lorg/apache/sshd/common/kex/DHFactory;->create([Ljava/lang/Object;)Lorg/apache/sshd/common/kex/AbstractDH;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/kex/DHG;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/apache/sshd/server/kex/DHGEXServer;->factory:Lorg/apache/sshd/common/kex/DHFactory;

    invoke-interface {v0}, Lorg/apache/sshd/common/kex/DHFactory;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init([B[B[B[B)V
    .locals 1
    .param p1, "v_s"    # [B
    .param p2, "v_c"    # [B
    .param p3, "i_s"    # [B
    .param p4, "i_c"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 103
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/sshd/server/kex/AbstractDHServerKeyExchange;->init([B[B[B[B)V

    .line 104
    const/16 v0, 0x22

    iput-byte v0, p0, Lorg/apache/sshd/server/kex/DHGEXServer;->expected:B

    .line 105
    return-void
.end method

.method protected loadModuliGroups()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/sshd/server/kex/Moduli$DhGroup;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 315
    invoke-virtual {p0}, Lorg/apache/sshd/server/kex/DHGEXServer;->getServerSession()Lorg/apache/sshd/server/session/ServerSession;

    move-result-object v0

    .line 316
    .local v0, "session":Lorg/apache/sshd/common/session/Session;
    const-string v1, "moduli-url"

    invoke-interface {v0, v1}, Lorg/apache/sshd/common/session/Session;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, "moduliStr":Ljava/lang/String;
    const/4 v2, 0x0

    .line 318
    .local v2, "groups":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/server/kex/Moduli$DhGroup;>;"
    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x5

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x4

    if-nez v3, :cond_0

    .line 320
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 321
    .local v3, "moduli":Ljava/net/URL;
    invoke-static {v3}, Lorg/apache/sshd/server/kex/Moduli;->parseModuli(Ljava/net/URL;)Ljava/util/List;

    move-result-object v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v10

    .line 325
    .end local v3    # "moduli":Ljava/net/URL;
    goto :goto_0

    .line 322
    :catch_0
    move-exception v3

    .line 323
    .local v3, "e":Ljava/io/IOException;
    iget-object v10, p0, Lorg/apache/sshd/server/kex/DHGEXServer;->log:Lorg/slf4j/Logger;

    new-array v11, v4, [Ljava/lang/Object;

    aput-object p0, v11, v8

    aput-object v0, v11, v7

    .line 324
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v6

    aput-object v1, v11, v5

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v9

    .line 323
    const-string v12, "loadModuliGroups({})[{}] Error ({}) loading external moduli from {}: {}"

    invoke-interface {v10, v12, v11}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 328
    .end local v3    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    if-nez v2, :cond_2

    .line 329
    const-string v1, "/org/apache/sshd/moduli"

    .line 331
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    .line 332
    .local v3, "moduli":Ljava/net/URL;
    if-eqz v3, :cond_1

    .line 336
    invoke-virtual {v3}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v10

    move-object v1, v10

    .line 337
    invoke-static {v3}, Lorg/apache/sshd/server/kex/Moduli;->loadInternalModuli(Ljava/net/URL;)Ljava/util/List;

    move-result-object v4

    move-object v2, v4

    .line 342
    .end local v3    # "moduli":Ljava/net/URL;
    goto :goto_1

    .line 333
    .restart local v3    # "moduli":Ljava/net/URL;
    :cond_1
    new-instance v10, Ljava/io/FileNotFoundException;

    const-string v11, "Missing internal moduli file"

    invoke-direct {v10, v11}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .end local v0    # "session":Lorg/apache/sshd/common/session/Session;
    .end local v1    # "moduliStr":Ljava/lang/String;
    .end local v2    # "groups":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/server/kex/Moduli$DhGroup;>;"
    throw v10
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 338
    .end local v3    # "moduli":Ljava/net/URL;
    .restart local v0    # "session":Lorg/apache/sshd/common/session/Session;
    .restart local v1    # "moduliStr":Ljava/lang/String;
    .restart local v2    # "groups":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/server/kex/Moduli$DhGroup;>;"
    :catch_1
    move-exception v3

    .line 339
    .local v3, "e":Ljava/io/IOException;
    iget-object v10, p0, Lorg/apache/sshd/server/kex/DHGEXServer;->log:Lorg/slf4j/Logger;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v8

    aput-object v0, v4, v7

    .line 340
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    aput-object v1, v4, v5

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    .line 339
    const-string v5, "loadModuliGroups({})[{}] Error ({}) loading internal moduli from {}: {}"

    invoke-interface {v10, v5, v4}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 341
    throw v3

    .line 345
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    :goto_1
    iget-object v3, p0, Lorg/apache/sshd/server/kex/DHGEXServer;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 346
    iget-object v3, p0, Lorg/apache/sshd/server/kex/DHGEXServer;->log:Lorg/slf4j/Logger;

    new-array v4, v9, [Ljava/lang/Object;

    aput-object p0, v4, v8

    aput-object v0, v4, v7

    .line 347
    invoke-static {v2}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    aput-object v1, v4, v5

    .line 346
    const-string v5, "loadModuliGroups({})[{}] Loaded {} moduli groups from {}"

    invoke-interface {v3, v5, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 349
    :cond_3
    return-object v2
.end method

.method public next(ILorg/apache/sshd/common/util/buffer/Buffer;)Z
    .locals 18
    .param p1, "cmd"    # I
    .param p2, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 109
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/server/kex/DHGEXServer;->getServerSession()Lorg/apache/sshd/server/session/ServerSession;

    move-result-object v2

    .line 110
    .local v2, "session":Lorg/apache/sshd/server/session/ServerSession;
    iget-object v3, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    .line 111
    .local v3, "debugEnabled":Z
    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x3

    const/4 v8, 0x0

    if-eqz v3, :cond_0

    .line 112
    iget-object v9, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->log:Lorg/slf4j/Logger;

    new-array v10, v4, [Ljava/lang/Object;

    aput-object v0, v10, v8

    aput-object v2, v10, v6

    .line 113
    invoke-static/range {p1 .. p1}, Lorg/apache/sshd/common/kex/KeyExchange;->getGroupKexOpcodeName(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    iget-byte v11, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->expected:B

    .line 114
    invoke-static {v11}, Lorg/apache/sshd/common/kex/KeyExchange;->getGroupKexOpcodeName(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v7

    .line 112
    const-string v11, "next({})[{}] process command={} (expected={})"

    invoke-interface {v9, v11, v10}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    :cond_0
    const/16 v9, 0x1e

    const/16 v10, 0x1f

    const-string v11, "Protocol error: bad parameters "

    const/4 v12, 0x5

    const/16 v14, 0x22

    const-string v15, " !< "

    if-ne v1, v9, :cond_3

    iget-byte v9, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->expected:B

    if-ne v9, v14, :cond_3

    .line 119
    iput-boolean v6, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->oldRequest:Z

    .line 120
    const/16 v9, 0x400

    const-string v14, "dhgex-server-min"

    invoke-static {v2, v14, v9}, Lorg/apache/sshd/common/PropertyResolverUtils;->getIntProperty(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->min:I

    .line 122
    invoke-virtual/range {p2 .. p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getInt()I

    move-result v9

    iput v9, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->prf:I

    .line 123
    nop

    .line 124
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getMaxDHGroupExchangeKeySize()I

    move-result v9

    .line 123
    const-string v14, "dhgex-server-max"

    invoke-static {v2, v14, v9}, Lorg/apache/sshd/common/PropertyResolverUtils;->getIntProperty(Lorg/apache/sshd/common/PropertyResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->max:I

    .line 126
    iget v14, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->min:I

    if-lt v9, v14, :cond_2

    iget v13, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->prf:I

    if-lt v13, v14, :cond_2

    if-lt v9, v13, :cond_2

    .line 131
    invoke-virtual {v0, v14, v13, v9}, Lorg/apache/sshd/server/kex/DHGEXServer;->chooseDH(III)Lorg/apache/sshd/common/kex/DHG;

    move-result-object v9

    iput-object v9, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->dh:Lorg/apache/sshd/common/kex/DHG;

    .line 132
    invoke-virtual {v9}, Lorg/apache/sshd/common/kex/DHG;->getE()[B

    move-result-object v9

    iput-object v9, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->f:[B

    .line 133
    iget-object v9, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->dh:Lorg/apache/sshd/common/kex/DHG;

    invoke-virtual {v9}, Lorg/apache/sshd/common/kex/DHG;->getHash()Lorg/apache/sshd/common/digest/Digest;

    move-result-object v9

    iput-object v9, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->hash:Lorg/apache/sshd/common/digest/Digest;

    .line 134
    iget-object v9, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->hash:Lorg/apache/sshd/common/digest/Digest;

    invoke-interface {v9}, Lorg/apache/sshd/common/digest/Digest;->init()V

    .line 136
    if-eqz v3, :cond_1

    .line 137
    iget-object v9, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->log:Lorg/slf4j/Logger;

    new-array v11, v12, [Ljava/lang/Object;

    aput-object v0, v11, v8

    aput-object v2, v11, v6

    iget v6, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->min:I

    .line 138
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v11, v5

    iget v5, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->prf:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v11, v7

    iget v5, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->max:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v11, v4

    .line 137
    const-string v4, "next({})[{}] send (old request) SSH_MSG_KEX_DH_GEX_GROUP - min={}, prf={}, max={}"

    invoke-interface {v9, v4, v11}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    :cond_1
    invoke-interface {v2, v10}, Lorg/apache/sshd/server/session/ServerSession;->createBuffer(B)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v4

    .line 142
    .end local p2    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .local v4, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    iget-object v5, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->dh:Lorg/apache/sshd/common/kex/DHG;

    invoke-virtual {v5}, Lorg/apache/sshd/common/kex/DHG;->getP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/sshd/common/util/buffer/Buffer;->putMPInt(Ljava/math/BigInteger;)V

    .line 143
    iget-object v5, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->dh:Lorg/apache/sshd/common/kex/DHG;

    invoke-virtual {v5}, Lorg/apache/sshd/common/kex/DHG;->getG()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/sshd/common/util/buffer/Buffer;->putMPInt(Ljava/math/BigInteger;)V

    .line 144
    invoke-interface {v2, v4}, Lorg/apache/sshd/server/session/ServerSession;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 146
    const/16 v5, 0x20

    iput-byte v5, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->expected:B

    .line 147
    return v8

    .line 127
    .end local v4    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .restart local p2    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    :cond_2
    new-instance v4, Lorg/apache/sshd/common/SshException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->min:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->prf:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->max:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v7, v5}, Lorg/apache/sshd/common/SshException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 150
    :cond_3
    if-ne v1, v14, :cond_6

    iget-byte v9, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->expected:B

    if-ne v9, v14, :cond_6

    .line 152
    invoke-virtual/range {p2 .. p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getInt()I

    move-result v9

    iput v9, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->min:I

    .line 153
    invoke-virtual/range {p2 .. p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getInt()I

    move-result v9

    iput v9, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->prf:I

    .line 154
    invoke-virtual/range {p2 .. p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getInt()I

    move-result v9

    iput v9, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->max:I

    .line 156
    iget v13, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->prf:I

    iget v14, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->min:I

    if-lt v13, v14, :cond_5

    if-lt v9, v13, :cond_5

    .line 161
    invoke-virtual {v0, v14, v13, v9}, Lorg/apache/sshd/server/kex/DHGEXServer;->chooseDH(III)Lorg/apache/sshd/common/kex/DHG;

    move-result-object v9

    iput-object v9, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->dh:Lorg/apache/sshd/common/kex/DHG;

    .line 162
    invoke-virtual {v9}, Lorg/apache/sshd/common/kex/DHG;->getE()[B

    move-result-object v9

    iput-object v9, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->f:[B

    .line 163
    iget-object v9, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->dh:Lorg/apache/sshd/common/kex/DHG;

    invoke-virtual {v9}, Lorg/apache/sshd/common/kex/DHG;->getHash()Lorg/apache/sshd/common/digest/Digest;

    move-result-object v9

    iput-object v9, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->hash:Lorg/apache/sshd/common/digest/Digest;

    .line 164
    iget-object v9, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->hash:Lorg/apache/sshd/common/digest/Digest;

    invoke-interface {v9}, Lorg/apache/sshd/common/digest/Digest;->init()V

    .line 166
    if-eqz v3, :cond_4

    .line 167
    iget-object v9, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->log:Lorg/slf4j/Logger;

    new-array v11, v12, [Ljava/lang/Object;

    aput-object v0, v11, v8

    aput-object v2, v11, v6

    iget v6, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->min:I

    .line 168
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v11, v5

    iget v5, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->prf:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v11, v7

    iget v5, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->max:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v11, v4

    .line 167
    const-string v4, "next({})[{}] Send SSH_MSG_KEX_DH_GEX_GROUP - min={}, prf={}, max={}"

    invoke-interface {v9, v4, v11}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    :cond_4
    invoke-interface {v2, v10}, Lorg/apache/sshd/server/session/ServerSession;->createBuffer(B)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v4

    .line 171
    .end local p2    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .restart local v4    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    iget-object v5, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->dh:Lorg/apache/sshd/common/kex/DHG;

    invoke-virtual {v5}, Lorg/apache/sshd/common/kex/DHG;->getP()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/sshd/common/util/buffer/Buffer;->putMPInt(Ljava/math/BigInteger;)V

    .line 172
    iget-object v5, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->dh:Lorg/apache/sshd/common/kex/DHG;

    invoke-virtual {v5}, Lorg/apache/sshd/common/kex/DHG;->getG()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/sshd/common/util/buffer/Buffer;->putMPInt(Ljava/math/BigInteger;)V

    .line 173
    invoke-interface {v2, v4}, Lorg/apache/sshd/server/session/ServerSession;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 175
    const/16 v5, 0x20

    iput-byte v5, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->expected:B

    .line 176
    return v8

    .line 157
    .end local v4    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .restart local p2    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    :cond_5
    new-instance v4, Lorg/apache/sshd/common/SshException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->min:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->prf:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->max:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v7, v5}, Lorg/apache/sshd/common/SshException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 179
    :cond_6
    iget-byte v9, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->expected:B

    if-ne v1, v9, :cond_b

    .line 185
    const/16 v9, 0x20

    if-ne v1, v9, :cond_a

    .line 186
    invoke-virtual/range {p2 .. p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getMPIntAsBytes()[B

    move-result-object v9

    iput-object v9, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->e:[B

    .line 187
    iget-object v9, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->dh:Lorg/apache/sshd/common/kex/DHG;

    iget-object v10, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->e:[B

    invoke-virtual {v9, v10}, Lorg/apache/sshd/common/kex/DHG;->setF([B)V

    .line 188
    iget-object v9, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->dh:Lorg/apache/sshd/common/kex/DHG;

    invoke-virtual {v9}, Lorg/apache/sshd/common/kex/DHG;->getK()[B

    move-result-object v9

    iput-object v9, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->k:[B

    .line 191
    invoke-interface {v2}, Lorg/apache/sshd/server/session/ServerSession;->getHostKey()Ljava/security/KeyPair;

    move-result-object v9

    const-string v10, "No server key pair available"

    invoke-static {v9, v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/KeyPair;

    .line 192
    .local v9, "kp":Ljava/security/KeyPair;
    sget-object v10, Lorg/apache/sshd/common/kex/KexProposalOption;->SERVERKEYS:Lorg/apache/sshd/common/kex/KexProposalOption;

    invoke-interface {v2, v10}, Lorg/apache/sshd/server/session/ServerSession;->getNegotiatedKexParameter(Lorg/apache/sshd/common/kex/KexProposalOption;)Ljava/lang/String;

    move-result-object v10

    .line 193
    .local v10, "algo":Ljava/lang/String;
    nop

    .line 194
    invoke-interface {v2}, Lorg/apache/sshd/server/session/ServerSession;->getSignatureFactories()Ljava/util/List;

    move-result-object v11

    invoke-static {v11, v10}, Lorg/apache/sshd/common/NamedFactory;->create(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 193
    const-string v13, "Unknown negotiated server keys: %s"

    invoke-static {v11, v13, v10}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/sshd/common/signature/Signature;

    .line 196
    .local v11, "sig":Lorg/apache/sshd/common/signature/Signature;
    invoke-virtual {v9}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v13

    invoke-interface {v11, v2, v13}, Lorg/apache/sshd/common/signature/Signature;->initSigner(Lorg/apache/sshd/common/session/SessionContext;Ljava/security/PrivateKey;)V

    .line 198
    new-instance v13, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;

    invoke-direct {v13}, Lorg/apache/sshd/common/util/buffer/ByteArrayBuffer;-><init>()V

    .line 199
    .end local p2    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .local v13, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {v9}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/apache/sshd/common/util/buffer/Buffer;->putRawPublicKey(Ljava/security/PublicKey;)V

    .line 200
    invoke-virtual {v13}, Lorg/apache/sshd/common/util/buffer/Buffer;->getCompactData()[B

    move-result-object v14

    .line 202
    .local v14, "k_s":[B
    invoke-virtual {v13}, Lorg/apache/sshd/common/util/buffer/Buffer;->clear()V

    .line 203
    iget-object v15, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->v_c:[B

    invoke-virtual {v13, v15}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([B)V

    .line 204
    iget-object v15, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->v_s:[B

    invoke-virtual {v13, v15}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([B)V

    .line 205
    iget-object v15, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->i_c:[B

    invoke-virtual {v13, v15}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([B)V

    .line 206
    iget-object v15, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->i_s:[B

    invoke-virtual {v13, v15}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([B)V

    .line 207
    invoke-virtual {v13, v14}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([B)V

    .line 209
    iget-boolean v15, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->oldRequest:Z

    if-eqz v15, :cond_7

    .line 210
    iget v15, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->prf:I

    int-to-long v4, v15

    invoke-virtual {v13, v4, v5}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    goto :goto_0

    .line 212
    :cond_7
    iget v4, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->min:I

    int-to-long v4, v4

    invoke-virtual {v13, v4, v5}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 213
    iget v4, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->prf:I

    int-to-long v4, v4

    invoke-virtual {v13, v4, v5}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 214
    iget v4, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->max:I

    int-to-long v4, v4

    invoke-virtual {v13, v4, v5}, Lorg/apache/sshd/common/util/buffer/Buffer;->putInt(J)V

    .line 217
    :goto_0
    iget-object v4, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->dh:Lorg/apache/sshd/common/kex/DHG;

    invoke-virtual {v4}, Lorg/apache/sshd/common/kex/DHG;->getP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v13, v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->putMPInt(Ljava/math/BigInteger;)V

    .line 218
    iget-object v4, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->dh:Lorg/apache/sshd/common/kex/DHG;

    invoke-virtual {v4}, Lorg/apache/sshd/common/kex/DHG;->getG()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v13, v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->putMPInt(Ljava/math/BigInteger;)V

    .line 219
    iget-object v4, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->e:[B

    invoke-virtual {v13, v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->putMPInt([B)V

    .line 220
    iget-object v4, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->f:[B

    invoke-virtual {v13, v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->putMPInt([B)V

    .line 221
    iget-object v4, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->k:[B

    invoke-virtual {v13, v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->putMPInt([B)V

    .line 222
    iget-object v4, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->hash:Lorg/apache/sshd/common/digest/Digest;

    invoke-virtual {v13}, Lorg/apache/sshd/common/util/buffer/Buffer;->array()[B

    move-result-object v5

    invoke-virtual {v13}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v15

    invoke-interface {v4, v5, v8, v15}, Lorg/apache/sshd/common/digest/Digest;->update([BII)V

    .line 223
    iget-object v4, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->hash:Lorg/apache/sshd/common/digest/Digest;

    invoke-interface {v4}, Lorg/apache/sshd/common/digest/Digest;->digest()[B

    move-result-object v4

    iput-object v4, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->h:[B

    .line 224
    iget-object v4, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->h:[B

    invoke-interface {v11, v2, v4}, Lorg/apache/sshd/common/signature/Signature;->update(Lorg/apache/sshd/common/session/SessionContext;[B)V

    .line 226
    invoke-virtual {v13}, Lorg/apache/sshd/common/util/buffer/Buffer;->clear()V

    .line 227
    invoke-virtual {v13, v10}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 228
    invoke-interface {v11, v2}, Lorg/apache/sshd/common/signature/Signature;->sign(Lorg/apache/sshd/common/session/SessionContext;)[B

    move-result-object v4

    .line 229
    .local v4, "sigBytes":[B
    invoke-virtual {v13, v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([B)V

    .line 231
    invoke-virtual {v13}, Lorg/apache/sshd/common/util/buffer/Buffer;->getCompactData()[B

    move-result-object v5

    .line 232
    .local v5, "sigH":[B
    iget-object v15, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->log:Lorg/slf4j/Logger;

    invoke-interface {v15}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 233
    iget-object v15, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->log:Lorg/slf4j/Logger;

    new-array v12, v7, [Ljava/lang/Object;

    aput-object v0, v12, v8

    aput-object v2, v12, v6

    invoke-static {v14}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->toHex([B)Ljava/lang/String;

    move-result-object v17

    const/16 v16, 0x2

    aput-object v17, v12, v16

    const-string v6, "next({})[{}][K_S]:  {}"

    invoke-interface {v15, v6, v12}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    iget-object v6, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->log:Lorg/slf4j/Logger;

    new-array v12, v7, [Ljava/lang/Object;

    aput-object v0, v12, v8

    const/4 v15, 0x1

    aput-object v2, v12, v15

    iget-object v15, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->f:[B

    invoke-static {v15}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->toHex([B)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v12, v16

    const-string v15, "next({})[{}][f]:    {}"

    invoke-interface {v6, v15, v12}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    iget-object v6, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->log:Lorg/slf4j/Logger;

    new-array v12, v7, [Ljava/lang/Object;

    aput-object v0, v12, v8

    const/4 v15, 0x1

    aput-object v2, v12, v15

    invoke-static {v5}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->toHex([B)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v12, v16

    const-string v15, "next({})[{}][sigH]: {}"

    invoke-interface {v6, v15, v12}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    :cond_8
    if-eqz v3, :cond_9

    .line 240
    iget-object v6, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->log:Lorg/slf4j/Logger;

    const/4 v12, 0x6

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v0, v12, v8

    const/4 v8, 0x1

    aput-object v2, v12, v8

    iget-boolean v8, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->oldRequest:Z

    .line 241
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v15, 0x2

    aput-object v8, v12, v15

    iget v8, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->min:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v12, v7

    iget v7, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->prf:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x4

    aput-object v7, v12, v8

    iget v7, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->max:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x5

    aput-object v7, v12, v8

    .line 240
    const-string v7, "next({})[{}] Send SSH_MSG_KEX_DH_GEX_REPLY - old={}, min={}, prf={}, max={}"

    invoke-interface {v6, v7, v12}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    :cond_9
    const/16 v6, 0x21

    .line 245
    invoke-static {v13}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->clear(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v7

    .line 244
    invoke-interface {v2, v6, v7}, Lorg/apache/sshd/server/session/ServerSession;->prepareBuffer(BLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v6

    .line 246
    .end local v13    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .local v6, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {v6, v14}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([B)V

    .line 247
    iget-object v7, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->f:[B

    invoke-virtual {v6, v7}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([B)V

    .line 248
    invoke-virtual {v6, v5}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBytes([B)V

    .line 249
    invoke-interface {v2, v6}, Lorg/apache/sshd/server/session/ServerSession;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 250
    const/4 v7, 0x1

    return v7

    .line 253
    .end local v4    # "sigBytes":[B
    .end local v5    # "sigH":[B
    .end local v6    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local v9    # "kp":Ljava/security/KeyPair;
    .end local v10    # "algo":Ljava/lang/String;
    .end local v11    # "sig":Lorg/apache/sshd/common/signature/Signature;
    .end local v14    # "k_s":[B
    .restart local p2    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    :cond_a
    return v8

    .line 180
    :cond_b
    new-instance v4, Lorg/apache/sshd/common/SshException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Protocol error: expected packet "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-byte v6, v0, Lorg/apache/sshd/server/kex/DHGEXServer;->expected:B

    .line 181
    invoke-static {v6}, Lorg/apache/sshd/common/kex/KeyExchange;->getGroupKexOpcodeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", got "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 182
    invoke-static/range {p1 .. p1}, Lorg/apache/sshd/common/kex/KeyExchange;->getGroupKexOpcodeName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v7, v5}, Lorg/apache/sshd/common/SshException;-><init>(ILjava/lang/String;)V

    throw v4
.end method
