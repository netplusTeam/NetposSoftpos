.class public Lorg/jpos/space/JESpace$Ref;
.super Ljava/lang/Object;
.source "JESpace.java"


# annotations
.annotation runtime Lcom/sleepycat/persist/model/Entity;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/space/JESpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ref"
.end annotation


# instance fields
.field private expires:J

.field private id:J
    .annotation runtime Lcom/sleepycat/persist/model/PrimaryKey;
        sequence = "Ref.id"
    .end annotation
.end field

.field private key:Ljava/lang/String;
    .annotation runtime Lcom/sleepycat/persist/model/SecondaryKey;
        relate = .enum Lcom/sleepycat/persist/model/Relationship;->MANY_TO_ONE:Lcom/sleepycat/persist/model/Relationship;
    .end annotation
.end field

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "timeout"    # J

    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    iput-object p1, p0, Lorg/jpos/space/JESpace$Ref;->key:Ljava/lang/String;

    .line 488
    invoke-direct {p0, p2}, Lorg/jpos/space/JESpace$Ref;->serialize(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/space/JESpace$Ref;->value:Ljava/lang/Object;

    .line 489
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    .line 490
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    add-long/2addr v0, p3

    iput-wide v0, p0, Lorg/jpos/space/JESpace$Ref;->expires:J

    .line 491
    :cond_0
    return-void
.end method

.method private deserialize(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 538
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 539
    .local v0, "cls":Ljava/lang/Class;
    invoke-direct {p0, v0}, Lorg/jpos/space/JESpace$Ref;->isPersistent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 540
    return-object p1

    .line 542
    :cond_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    move-object v2, p1

    check-cast v2, [B

    check-cast v2, [B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 544
    .local v1, "bais":Ljava/io/ByteArrayInputStream;
    :try_start_0
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 545
    .local v2, "is":Ljava/io/ObjectInputStream;
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 546
    .end local v2    # "is":Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v2

    .line 547
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/jpos/space/SpaceError;

    invoke-direct {v3, v2}, Lorg/jpos/space/SpaceError;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private isPersistent(Ljava/lang/Class;)Z
    .locals 1
    .param p1, "c"    # Ljava/lang/Class;

    .line 517
    nop

    .line 518
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lcom/sleepycat/persist/model/Entity;

    .line 519
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Lcom/sleepycat/persist/model/Persistent;

    .line 520
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 517
    :goto_1
    return v0
.end method

.method private serialize(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 523
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 524
    .local v0, "cls":Ljava/lang/Class;
    invoke-direct {p0, v0}, Lorg/jpos/space/JESpace$Ref;->isPersistent(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 525
    return-object p1

    .line 527
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 529
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 530
    .local v2, "os":Ljava/io/ObjectOutputStream;
    invoke-virtual {v2, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 531
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v3

    .line 534
    .end local v2    # "os":Ljava/io/ObjectOutputStream;
    nop

    .line 535
    return-object p1

    .line 532
    :catch_0
    move-exception v2

    .line 533
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lorg/jpos/space/SpaceError;

    invoke-direct {v3, v2}, Lorg/jpos/space/SpaceError;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public getExpiration()J
    .locals 2

    .line 511
    iget-wide v0, p0, Lorg/jpos/space/JESpace$Ref;->expires:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .line 493
    iget-wide v0, p0, Lorg/jpos/space/JESpace$Ref;->id:J

    return-wide v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .line 505
    iget-object v0, p0, Lorg/jpos/space/JESpace$Ref;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 508
    iget-object v0, p0, Lorg/jpos/space/JESpace$Ref;->value:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/jpos/space/JESpace$Ref;->deserialize(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasExpiration()Z
    .locals 4

    .line 514
    iget-wide v0, p0, Lorg/jpos/space/JESpace$Ref;->expires:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isActive()Z
    .locals 1

    .line 502
    invoke-virtual {p0}, Lorg/jpos/space/JESpace$Ref;->isExpired()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isExpired()Z
    .locals 4

    .line 499
    iget-wide v0, p0, Lorg/jpos/space/JESpace$Ref;->expires:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reverseId()V
    .locals 2

    .line 496
    iget-wide v0, p0, Lorg/jpos/space/JESpace$Ref;->id:J

    neg-long v0, v0

    iput-wide v0, p0, Lorg/jpos/space/JESpace$Ref;->id:J

    .line 497
    return-void
.end method
