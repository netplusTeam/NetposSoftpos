.class public Lorg/jctools/maps/NonBlockingSetInt;
.super Ljava/util/AbstractSet;
.source "NonBlockingSetInt.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jctools/maps/NonBlockingSetInt$NBSI;,
        Lorg/jctools/maps/NonBlockingSetInt$iter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/lang/Integer;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final _nbsi_offset:J

.field private static final serialVersionUID:J = 0x11207cb4719799cbL


# instance fields
.field private transient _nbsi:Lorg/jctools/maps/NonBlockingSetInt$NBSI;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    const-class v0, Lorg/jctools/maps/NonBlockingSetInt;

    const-string v1, "_nbsi"

    invoke-static {v0, v1}, Lorg/jctools/util/UnsafeAccess;->fieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lorg/jctools/maps/NonBlockingSetInt;->_nbsi_offset:J

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 66
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 67
    new-instance v0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    new-instance v1, Lorg/jctools/maps/ConcurrentAutoTable;

    invoke-direct {v1}, Lorg/jctools/maps/ConcurrentAutoTable;-><init>()V

    const/16 v2, 0x3f

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, p0, v3}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;-><init>(ILorg/jctools/maps/ConcurrentAutoTable;Lorg/jctools/maps/NonBlockingSetInt;Lorg/jctools/maps/NonBlockingSetInt$1;)V

    iput-object v0, p0, Lorg/jctools/maps/NonBlockingSetInt;->_nbsi:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    .line 68
    return-void
.end method

.method private final CAS_nbsi(Lorg/jctools/maps/NonBlockingSetInt$NBSI;Lorg/jctools/maps/NonBlockingSetInt$NBSI;)Z
    .locals 6
    .param p1, "old"    # Lorg/jctools/maps/NonBlockingSetInt$NBSI;
    .param p2, "nnn"    # Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    .line 57
    sget-object v0, Lorg/jctools/util/UnsafeAccess;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v2, Lorg/jctools/maps/NonBlockingSetInt;->_nbsi_offset:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/google/common/util/concurrent/AbstractFuture$UnsafeAtomicHelper$$ExternalSyntheticBackportWithForwarding0;->m(Lsun/misc/Unsafe;Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lorg/jctools/maps/NonBlockingSetInt;)Lorg/jctools/maps/NonBlockingSetInt$NBSI;
    .locals 1
    .param p0, "x0"    # Lorg/jctools/maps/NonBlockingSetInt;

    .line 50
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingSetInt;->_nbsi:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    return-object v0
.end method

.method static synthetic access$500(Lorg/jctools/maps/NonBlockingSetInt;Lorg/jctools/maps/NonBlockingSetInt$NBSI;Lorg/jctools/maps/NonBlockingSetInt$NBSI;)Z
    .locals 1
    .param p0, "x0"    # Lorg/jctools/maps/NonBlockingSetInt;
    .param p1, "x1"    # Lorg/jctools/maps/NonBlockingSetInt$NBSI;
    .param p2, "x2"    # Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    .line 50
    invoke-direct {p0, p1, p2}, Lorg/jctools/maps/NonBlockingSetInt;->CAS_nbsi(Lorg/jctools/maps/NonBlockingSetInt$NBSI;Lorg/jctools/maps/NonBlockingSetInt$NBSI;)Z

    move-result v0

    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 196
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 197
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 198
    .local v0, "len":I
    new-instance v1, Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    new-instance v2, Lorg/jctools/maps/ConcurrentAutoTable;

    invoke-direct {v2}, Lorg/jctools/maps/ConcurrentAutoTable;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, p0, v3}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;-><init>(ILorg/jctools/maps/ConcurrentAutoTable;Lorg/jctools/maps/NonBlockingSetInt;Lorg/jctools/maps/NonBlockingSetInt$1;)V

    iput-object v1, p0, Lorg/jctools/maps/NonBlockingSetInt;->_nbsi:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    .line 199
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 200
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 201
    iget-object v2, p0, Lorg/jctools/maps/NonBlockingSetInt;->_nbsi:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    invoke-virtual {v2, v1}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->add(I)Z

    .line 199
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 186
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingSetInt;->_nbsi:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    .line 187
    .local v0, "nbsi":Lorg/jctools/maps/NonBlockingSetInt$NBSI;
    iget-object v1, p0, Lorg/jctools/maps/NonBlockingSetInt;->_nbsi:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    invoke-static {v1}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->access$100(Lorg/jctools/maps/NonBlockingSetInt$NBSI;)[J

    move-result-object v1

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x6

    .line 188
    .local v1, "len":I
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 189
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 190
    iget-object v3, p0, Lorg/jctools/maps/NonBlockingSetInt;->_nbsi:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    invoke-virtual {v3, v2}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->contains(I)Z

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 189
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 191
    .end local v2    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public add(I)Z
    .locals 1
    .param p1, "i"    # I

    .line 109
    const-string v0, "i"

    invoke-static {p1, v0}, Lorg/jctools/util/RangeUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 110
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingSetInt;->_nbsi:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    invoke-virtual {v0, p1}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->add(I)Z

    move-result v0

    return v0
.end method

.method public add(Ljava/lang/Integer;)Z
    .locals 1
    .param p1, "i"    # Ljava/lang/Integer;

    .line 78
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jctools/maps/NonBlockingSetInt;->add(I)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 50
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lorg/jctools/maps/NonBlockingSetInt;->add(Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 4

    .line 136
    new-instance v0, Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    new-instance v1, Lorg/jctools/maps/ConcurrentAutoTable;

    invoke-direct {v1}, Lorg/jctools/maps/ConcurrentAutoTable;-><init>()V

    const/16 v2, 0x3f

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, p0, v3}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;-><init>(ILorg/jctools/maps/ConcurrentAutoTable;Lorg/jctools/maps/NonBlockingSetInt;Lorg/jctools/maps/NonBlockingSetInt$1;)V

    .line 137
    .local v0, "cleared":Lorg/jctools/maps/NonBlockingSetInt$NBSI;
    :goto_0
    iget-object v1, p0, Lorg/jctools/maps/NonBlockingSetInt;->_nbsi:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    invoke-direct {p0, v1, v0}, Lorg/jctools/maps/NonBlockingSetInt;->CAS_nbsi(Lorg/jctools/maps/NonBlockingSetInt$NBSI;Lorg/jctools/maps/NonBlockingSetInt$NBSI;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    goto :goto_0

    .line 139
    :cond_0
    return-void
.end method

.method public contains(I)Z
    .locals 1
    .param p1, "i"    # I

    .line 117
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/jctools/maps/NonBlockingSetInt;->_nbsi:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    invoke-virtual {v0, p1}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 88
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jctools/maps/NonBlockingSetInt;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 148
    new-instance v0, Lorg/jctools/maps/NonBlockingSetInt$iter;

    invoke-direct {v0, p0}, Lorg/jctools/maps/NonBlockingSetInt$iter;-><init>(Lorg/jctools/maps/NonBlockingSetInt;)V

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingSetInt;->_nbsi:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    invoke-static {v0}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->access$100(Lorg/jctools/maps/NonBlockingSetInt$NBSI;)[J

    move-result-object v0

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public print()V
    .locals 2

    .line 142
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingSetInt;->_nbsi:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->access$200(Lorg/jctools/maps/NonBlockingSetInt$NBSI;I)V

    return-void
.end method

.method public remove(I)Z
    .locals 1
    .param p1, "i"    # I

    .line 123
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/jctools/maps/NonBlockingSetInt;->_nbsi:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    invoke-virtual {v0, p1}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->remove(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 98
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jctools/maps/NonBlockingSetInt;->remove(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public size()I
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingSetInt;->_nbsi:Lorg/jctools/maps/NonBlockingSetInt$NBSI;

    invoke-virtual {v0}, Lorg/jctools/maps/NonBlockingSetInt$NBSI;->size()I

    move-result v0

    return v0
.end method
