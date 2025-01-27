.class Lcom/sleepycat/bind/serial/StoredClassCatalog$ClassInfo;
.super Ljava/lang/Object;
.source "StoredClassCatalog.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/bind/serial/StoredClassCatalog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClassInfo"
.end annotation


# static fields
.field static final serialVersionUID:J = 0x355dc5a528d5d882L


# instance fields
.field private transient classFormat:Ljava/io/ObjectStreamClass;

.field private classID:[B


# direct methods
.method constructor <init>()V
    .locals 0

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 5
    .param p1, "dbt"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    invoke-virtual {p1}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v0

    .line 395
    .local v0, "data":[B
    const/4 v1, 0x0

    aget-byte v2, v0, v1

    .line 396
    .local v2, "len":I
    new-array v3, v2, [B

    iput-object v3, p0, Lcom/sleepycat/bind/serial/StoredClassCatalog$ClassInfo;->classID:[B

    .line 397
    const/4 v4, 0x1

    invoke-static {v0, v4, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 398
    return-void
.end method


# virtual methods
.method getClassFormat()Ljava/io/ObjectStreamClass;
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/sleepycat/bind/serial/StoredClassCatalog$ClassInfo;->classFormat:Ljava/io/ObjectStreamClass;

    return-object v0
.end method

.method getClassID()[B
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/sleepycat/bind/serial/StoredClassCatalog$ClassInfo;->classID:[B

    return-object v0
.end method

.method setClassFormat(Ljava/io/ObjectStreamClass;)V
    .locals 0
    .param p1, "classFormat"    # Ljava/io/ObjectStreamClass;

    .line 425
    iput-object p1, p0, Lcom/sleepycat/bind/serial/StoredClassCatalog$ClassInfo;->classFormat:Ljava/io/ObjectStreamClass;

    .line 426
    return-void
.end method

.method setClassID([B)V
    .locals 0
    .param p1, "classID"    # [B

    .line 410
    iput-object p1, p0, Lcom/sleepycat/bind/serial/StoredClassCatalog$ClassInfo;->classID:[B

    .line 411
    return-void
.end method

.method toDbt(Lcom/sleepycat/je/DatabaseEntry;)V
    .locals 5
    .param p1, "dbt"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 402
    iget-object v0, p0, Lcom/sleepycat/bind/serial/StoredClassCatalog$ClassInfo;->classID:[B

    array-length v1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 403
    .local v1, "data":[B
    array-length v3, v0

    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, v1, v4

    .line 404
    array-length v3, v0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 405
    invoke-virtual {p1, v1}, Lcom/sleepycat/je/DatabaseEntry;->setData([B)V

    .line 406
    return-void
.end method
