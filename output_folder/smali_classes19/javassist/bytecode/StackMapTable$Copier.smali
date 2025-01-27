.class Ljavassist/bytecode/StackMapTable$Copier;
.super Ljavassist/bytecode/StackMapTable$SimpleCopy;
.source "StackMapTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/StackMapTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Copier"
.end annotation


# instance fields
.field private classnames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private destPool:Ljavassist/bytecode/ConstPool;

.field private srcPool:Ljavassist/bytecode/ConstPool;


# direct methods
.method public constructor <init>(Ljavassist/bytecode/ConstPool;[BLjavassist/bytecode/ConstPool;Ljava/util/Map;)V
    .locals 0
    .param p1, "src"    # Ljavassist/bytecode/ConstPool;
    .param p2, "data"    # [B
    .param p3, "dest"    # Ljavassist/bytecode/ConstPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/ConstPool;",
            "[B",
            "Ljavassist/bytecode/ConstPool;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 430
    .local p4, "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Ljavassist/bytecode/StackMapTable$SimpleCopy;-><init>([B)V

    .line 431
    iput-object p1, p0, Ljavassist/bytecode/StackMapTable$Copier;->srcPool:Ljavassist/bytecode/ConstPool;

    .line 432
    iput-object p3, p0, Ljavassist/bytecode/StackMapTable$Copier;->destPool:Ljavassist/bytecode/ConstPool;

    .line 433
    iput-object p4, p0, Ljavassist/bytecode/StackMapTable$Copier;->classnames:Ljava/util/Map;

    .line 434
    return-void
.end method


# virtual methods
.method protected copyData(II)I
    .locals 3
    .param p1, "tag"    # I
    .param p2, "data"    # I

    .line 438
    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 439
    iget-object v0, p0, Ljavassist/bytecode/StackMapTable$Copier;->srcPool:Ljavassist/bytecode/ConstPool;

    iget-object v1, p0, Ljavassist/bytecode/StackMapTable$Copier;->destPool:Ljavassist/bytecode/ConstPool;

    iget-object v2, p0, Ljavassist/bytecode/StackMapTable$Copier;->classnames:Ljava/util/Map;

    invoke-virtual {v0, p2, v1, v2}, Ljavassist/bytecode/ConstPool;->copy(ILjavassist/bytecode/ConstPool;Ljava/util/Map;)I

    move-result v0

    return v0

    .line 440
    :cond_0
    return p2
.end method

.method protected copyData([I[I)[I
    .locals 6
    .param p1, "tags"    # [I
    .param p2, "data"    # [I

    .line 445
    array-length v0, p2

    new-array v0, v0, [I

    .line 446
    .local v0, "newData":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 447
    aget v2, p1, v1

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    .line 448
    iget-object v2, p0, Ljavassist/bytecode/StackMapTable$Copier;->srcPool:Ljavassist/bytecode/ConstPool;

    aget v3, p2, v1

    iget-object v4, p0, Ljavassist/bytecode/StackMapTable$Copier;->destPool:Ljavassist/bytecode/ConstPool;

    iget-object v5, p0, Ljavassist/bytecode/StackMapTable$Copier;->classnames:Ljava/util/Map;

    invoke-virtual {v2, v3, v4, v5}, Ljavassist/bytecode/ConstPool;->copy(ILjavassist/bytecode/ConstPool;Ljava/util/Map;)I

    move-result v2

    aput v2, v0, v1

    goto :goto_1

    .line 450
    :cond_0
    aget v2, p2, v1

    aput v2, v0, v1

    .line 446
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 452
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method
