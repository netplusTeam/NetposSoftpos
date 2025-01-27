.class public Lio/netty/handler/codec/DefaultHeaders;
.super Ljava/lang/Object;
.source "DefaultHeaders.java"

# interfaces
.implements Lio/netty/handler/codec/Headers;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;,
        Lio/netty/handler/codec/DefaultHeaders$ValueIterator;,
        Lio/netty/handler/codec/DefaultHeaders$HeaderIterator;,
        Lio/netty/handler/codec/DefaultHeaders$NameValidator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "T::",
        "Lio/netty/handler/codec/Headers<",
        "TK;TV;TT;>;>",
        "Ljava/lang/Object;",
        "Lio/netty/handler/codec/Headers<",
        "TK;TV;TT;>;"
    }
.end annotation


# static fields
.field static final HASH_CODE_SEED:I = -0x3d4d51cb


# instance fields
.field private final entries:[Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final hashMask:B

.field private final hashingStrategy:Lio/netty/util/HashingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/HashingStrategy<",
            "TK;>;"
        }
    .end annotation
.end field

.field protected final head:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final nameValidator:Lio/netty/handler/codec/DefaultHeaders$NameValidator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/handler/codec/DefaultHeaders$NameValidator<",
            "TK;>;"
        }
    .end annotation
.end field

.field size:I

.field private final valueConverter:Lio/netty/handler/codec/ValueConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/handler/codec/ValueConverter<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/ValueConverter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/ValueConverter<",
            "TV;>;)V"
        }
    .end annotation

    .line 77
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "valueConverter":Lio/netty/handler/codec/ValueConverter;, "Lio/netty/handler/codec/ValueConverter<TV;>;"
    sget-object v0, Lio/netty/util/HashingStrategy;->JAVA_HASHER:Lio/netty/util/HashingStrategy;

    invoke-direct {p0, v0, p1}, Lio/netty/handler/codec/DefaultHeaders;-><init>(Lio/netty/util/HashingStrategy;Lio/netty/handler/codec/ValueConverter;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/ValueConverter;Lio/netty/handler/codec/DefaultHeaders$NameValidator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/ValueConverter<",
            "TV;>;",
            "Lio/netty/handler/codec/DefaultHeaders$NameValidator<",
            "TK;>;)V"
        }
    .end annotation

    .line 82
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "valueConverter":Lio/netty/handler/codec/ValueConverter;, "Lio/netty/handler/codec/ValueConverter<TV;>;"
    .local p2, "nameValidator":Lio/netty/handler/codec/DefaultHeaders$NameValidator;, "Lio/netty/handler/codec/DefaultHeaders$NameValidator<TK;>;"
    sget-object v0, Lio/netty/util/HashingStrategy;->JAVA_HASHER:Lio/netty/util/HashingStrategy;

    invoke-direct {p0, v0, p1, p2}, Lio/netty/handler/codec/DefaultHeaders;-><init>(Lio/netty/util/HashingStrategy;Lio/netty/handler/codec/ValueConverter;Lio/netty/handler/codec/DefaultHeaders$NameValidator;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Lio/netty/util/HashingStrategy;Lio/netty/handler/codec/ValueConverter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/HashingStrategy<",
            "TK;>;",
            "Lio/netty/handler/codec/ValueConverter<",
            "TV;>;)V"
        }
    .end annotation

    .line 87
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "nameHashingStrategy":Lio/netty/util/HashingStrategy;, "Lio/netty/util/HashingStrategy<TK;>;"
    .local p2, "valueConverter":Lio/netty/handler/codec/ValueConverter;, "Lio/netty/handler/codec/ValueConverter<TV;>;"
    sget-object v0, Lio/netty/handler/codec/DefaultHeaders$NameValidator;->NOT_NULL:Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/codec/DefaultHeaders;-><init>(Lio/netty/util/HashingStrategy;Lio/netty/handler/codec/ValueConverter;Lio/netty/handler/codec/DefaultHeaders$NameValidator;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Lio/netty/util/HashingStrategy;Lio/netty/handler/codec/ValueConverter;Lio/netty/handler/codec/DefaultHeaders$NameValidator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/HashingStrategy<",
            "TK;>;",
            "Lio/netty/handler/codec/ValueConverter<",
            "TV;>;",
            "Lio/netty/handler/codec/DefaultHeaders$NameValidator<",
            "TK;>;)V"
        }
    .end annotation

    .line 92
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "nameHashingStrategy":Lio/netty/util/HashingStrategy;, "Lio/netty/util/HashingStrategy<TK;>;"
    .local p2, "valueConverter":Lio/netty/handler/codec/ValueConverter;, "Lio/netty/handler/codec/ValueConverter<TV;>;"
    .local p3, "nameValidator":Lio/netty/handler/codec/DefaultHeaders$NameValidator;, "Lio/netty/handler/codec/DefaultHeaders$NameValidator<TK;>;"
    const/16 v0, 0x10

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/handler/codec/DefaultHeaders;-><init>(Lio/netty/util/HashingStrategy;Lio/netty/handler/codec/ValueConverter;Lio/netty/handler/codec/DefaultHeaders$NameValidator;I)V

    .line 93
    return-void
.end method

.method public constructor <init>(Lio/netty/util/HashingStrategy;Lio/netty/handler/codec/ValueConverter;Lio/netty/handler/codec/DefaultHeaders$NameValidator;I)V
    .locals 2
    .param p4, "arraySizeHint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/HashingStrategy<",
            "TK;>;",
            "Lio/netty/handler/codec/ValueConverter<",
            "TV;>;",
            "Lio/netty/handler/codec/DefaultHeaders$NameValidator<",
            "TK;>;I)V"
        }
    .end annotation

    .line 105
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "nameHashingStrategy":Lio/netty/util/HashingStrategy;, "Lio/netty/util/HashingStrategy<TK;>;"
    .local p2, "valueConverter":Lio/netty/handler/codec/ValueConverter;, "Lio/netty/handler/codec/ValueConverter<TV;>;"
    .local p3, "nameValidator":Lio/netty/handler/codec/DefaultHeaders$NameValidator;, "Lio/netty/handler/codec/DefaultHeaders$NameValidator<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const-string v0, "valueConverter"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/ValueConverter;

    iput-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    .line 107
    const-string v0, "nameValidator"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    iput-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->nameValidator:Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    .line 108
    const-string v0, "nameHashingStrategy"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/HashingStrategy;

    iput-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->hashingStrategy:Lio/netty/util/HashingStrategy;

    .line 111
    const/16 v0, 0x80

    invoke-static {p4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Lio/netty/util/internal/MathUtil;->findNextPositivePowerOfTwo(I)I

    move-result v0

    new-array v0, v0, [Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    iput-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->entries:[Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    .line 112
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lio/netty/handler/codec/DefaultHeaders;->hashMask:B

    .line 113
    new-instance v0, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    invoke-direct {v0}, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->head:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    .line 114
    return-void
.end method

.method static synthetic access$100(Lio/netty/handler/codec/DefaultHeaders;)Lio/netty/util/HashingStrategy;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/DefaultHeaders;

    .line 43
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->hashingStrategy:Lio/netty/util/HashingStrategy;

    return-object v0
.end method

.method static synthetic access$200(Lio/netty/handler/codec/DefaultHeaders;)[Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/DefaultHeaders;

    .line 43
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->entries:[Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    return-object v0
.end method

.method static synthetic access$300(Lio/netty/handler/codec/DefaultHeaders;I)I
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/DefaultHeaders;
    .param p1, "x1"    # I

    .line 43
    invoke-direct {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->index(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lio/netty/handler/codec/DefaultHeaders;Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;)Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/DefaultHeaders;
    .param p1, "x1"    # Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;
    .param p2, "x2"    # Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    .line 43
    invoke-direct {p0, p1, p2}, Lio/netty/handler/codec/DefaultHeaders;->remove0(Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;)Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    move-result-object v0

    return-object v0
.end method

.method private add0(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "h"    # I
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITK;TV;)V"
        }
    .end annotation

    .line 974
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p3, "name":Ljava/lang/Object;, "TK;"
    .local p4, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->entries:[Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    aget-object v1, v0, p2

    invoke-virtual {p0, p1, p3, p4, v1}, Lio/netty/handler/codec/DefaultHeaders;->newHeaderEntry(ILjava/lang/Object;Ljava/lang/Object;Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;)Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    move-result-object v1

    aput-object v1, v0, p2

    .line 975
    iget v0, p0, Lio/netty/handler/codec/DefaultHeaders;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/netty/handler/codec/DefaultHeaders;->size:I

    .line 976
    return-void
.end method

.method private index(I)I
    .locals 1
    .param p1, "hash"    # I

    .line 969
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    iget-byte v0, p0, Lio/netty/handler/codec/DefaultHeaders;->hashMask:B

    and-int/2addr v0, p1

    return v0
.end method

.method private remove0(Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;)Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<",
            "TK;TV;>;",
            "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<",
            "TK;TV;>;)",
            "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1016
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "entry":Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;, "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<TK;TV;>;"
    .local p2, "previous":Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;, "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<TK;TV;>;"
    iget v0, p1, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->hash:I

    invoke-direct {p0, v0}, Lio/netty/handler/codec/DefaultHeaders;->index(I)I

    move-result v0

    .line 1017
    .local v0, "i":I
    iget-object v1, p0, Lio/netty/handler/codec/DefaultHeaders;->entries:[Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    aget-object v2, v1, v0

    .line 1018
    .local v2, "e":Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;, "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<TK;TV;>;"
    if-ne v2, p1, :cond_0

    .line 1019
    iget-object v3, p1, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->next:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    aput-object v3, v1, v0

    .line 1020
    iget-object v1, p0, Lio/netty/handler/codec/DefaultHeaders;->entries:[Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    aget-object p2, v1, v0

    goto :goto_0

    .line 1022
    :cond_0
    iget-object v1, p1, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->next:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    iput-object v1, p2, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->next:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    .line 1024
    :goto_0
    invoke-virtual {p1}, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->remove()V

    .line 1025
    iget v1, p0, Lio/netty/handler/codec/DefaultHeaders;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/netty/handler/codec/DefaultHeaders;->size:I

    .line 1026
    return-object p2
.end method

.method private remove0(IILjava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "h"    # I
    .param p2, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITK;)TV;"
        }
    .end annotation

    .line 982
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p3, "name":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->entries:[Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    aget-object v0, v0, p2

    .line 983
    .local v0, "e":Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;, "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<TK;TV;>;"
    if-nez v0, :cond_0

    .line 984
    const/4 v1, 0x0

    return-object v1

    .line 987
    :cond_0
    const/4 v1, 0x0

    .line 988
    .local v1, "value":Ljava/lang/Object;, "TV;"
    iget-object v2, v0, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->next:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    .line 989
    .local v2, "next":Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;, "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<TK;TV;>;"
    :goto_0
    if-eqz v2, :cond_2

    .line 990
    iget v3, v2, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->hash:I

    if-ne v3, p1, :cond_1

    iget-object v3, p0, Lio/netty/handler/codec/DefaultHeaders;->hashingStrategy:Lio/netty/util/HashingStrategy;

    iget-object v4, v2, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->key:Ljava/lang/Object;

    invoke-interface {v3, p3, v4}, Lio/netty/util/HashingStrategy;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 991
    iget-object v1, v2, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->value:Ljava/lang/Object;

    .line 992
    iget-object v3, v2, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->next:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    iput-object v3, v0, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->next:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    .line 993
    invoke-virtual {v2}, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->remove()V

    .line 994
    iget v3, p0, Lio/netty/handler/codec/DefaultHeaders;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lio/netty/handler/codec/DefaultHeaders;->size:I

    goto :goto_1

    .line 996
    :cond_1
    move-object v0, v2

    .line 999
    :goto_1
    iget-object v2, v0, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->next:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    goto :goto_0

    .line 1002
    :cond_2
    iget-object v3, p0, Lio/netty/handler/codec/DefaultHeaders;->entries:[Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    aget-object v0, v3, p2

    .line 1003
    iget v3, v0, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->hash:I

    if-ne v3, p1, :cond_4

    iget-object v3, p0, Lio/netty/handler/codec/DefaultHeaders;->hashingStrategy:Lio/netty/util/HashingStrategy;

    iget-object v4, v0, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->key:Ljava/lang/Object;

    invoke-interface {v3, p3, v4}, Lio/netty/util/HashingStrategy;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1004
    if-nez v1, :cond_3

    .line 1005
    iget-object v1, v0, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->value:Ljava/lang/Object;

    .line 1007
    :cond_3
    iget-object v3, p0, Lio/netty/handler/codec/DefaultHeaders;->entries:[Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    iget-object v4, v0, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->next:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    aput-object v4, v3, p2

    .line 1008
    invoke-virtual {v0}, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->remove()V

    .line 1009
    iget v3, p0, Lio/netty/handler/codec/DefaultHeaders;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lio/netty/handler/codec/DefaultHeaders;->size:I

    .line 1012
    :cond_4
    return-object v1
.end method

.method private thisT()Lio/netty/handler/codec/Headers;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1031
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    return-object p0
.end method


# virtual methods
.method public add(Lio/netty/handler/codec/Headers;)Lio/netty/handler/codec/Headers;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/Headers<",
            "+TK;+TV;*>;)TT;"
        }
    .end annotation

    .line 393
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "headers":Lio/netty/handler/codec/Headers;, "Lio/netty/handler/codec/Headers<+TK;+TV;*>;"
    if-eq p1, p0, :cond_0

    .line 396
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->addImpl(Lio/netty/handler/codec/Headers;)V

    .line 397
    invoke-direct {p0}, Lio/netty/handler/codec/DefaultHeaders;->thisT()Lio/netty/handler/codec/Headers;

    move-result-object v0

    return-object v0

    .line 394
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "can\'t add to itself."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public add(Ljava/lang/Object;Ljava/lang/Iterable;)Lio/netty/handler/codec/Headers;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)TT;"
        }
    .end annotation

    .line 305
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->nameValidator:Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/DefaultHeaders$NameValidator;->validateName(Ljava/lang/Object;)V

    .line 306
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->hashingStrategy:Lio/netty/util/HashingStrategy;

    invoke-interface {v0, p1}, Lio/netty/util/HashingStrategy;->hashCode(Ljava/lang/Object;)I

    move-result v0

    .line 307
    .local v0, "h":I
    invoke-direct {p0, v0}, Lio/netty/handler/codec/DefaultHeaders;->index(I)I

    move-result v1

    .line 308
    .local v1, "i":I
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 309
    .local v3, "v":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, v0, v1, p1, v3}, Lio/netty/handler/codec/DefaultHeaders;->add0(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 310
    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    goto :goto_0

    .line 311
    :cond_0
    invoke-direct {p0}, Lio/netty/handler/codec/DefaultHeaders;->thisT()Lio/netty/handler/codec/Headers;

    move-result-object v2

    return-object v2
.end method

.method public add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TT;"
        }
    .end annotation

    .line 295
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->nameValidator:Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/DefaultHeaders$NameValidator;->validateName(Ljava/lang/Object;)V

    .line 296
    const-string v0, "value"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 297
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->hashingStrategy:Lio/netty/util/HashingStrategy;

    invoke-interface {v0, p1}, Lio/netty/util/HashingStrategy;->hashCode(Ljava/lang/Object;)I

    move-result v0

    .line 298
    .local v0, "h":I
    invoke-direct {p0, v0}, Lio/netty/handler/codec/DefaultHeaders;->index(I)I

    move-result v1

    .line 299
    .local v1, "i":I
    invoke-direct {p0, v0, v1, p1, p2}, Lio/netty/handler/codec/DefaultHeaders;->add0(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 300
    invoke-direct {p0}, Lio/netty/handler/codec/DefaultHeaders;->thisT()Lio/netty/handler/codec/Headers;

    move-result-object v2

    return-object v2
.end method

.method public varargs add(Ljava/lang/Object;[Ljava/lang/Object;)Lio/netty/handler/codec/Headers;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[TV;)TT;"
        }
    .end annotation

    .line 316
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    .local p2, "values":[Ljava/lang/Object;, "[TV;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->nameValidator:Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/DefaultHeaders$NameValidator;->validateName(Ljava/lang/Object;)V

    .line 317
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->hashingStrategy:Lio/netty/util/HashingStrategy;

    invoke-interface {v0, p1}, Lio/netty/util/HashingStrategy;->hashCode(Ljava/lang/Object;)I

    move-result v0

    .line 318
    .local v0, "h":I
    invoke-direct {p0, v0}, Lio/netty/handler/codec/DefaultHeaders;->index(I)I

    move-result v1

    .line 319
    .local v1, "i":I
    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p2, v3

    .line 320
    .local v4, "v":Ljava/lang/Object;, "TV;"
    invoke-direct {p0, v0, v1, p1, v4}, Lio/netty/handler/codec/DefaultHeaders;->add0(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 319
    .end local v4    # "v":Ljava/lang/Object;, "TV;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 322
    :cond_0
    invoke-direct {p0}, Lio/netty/handler/codec/DefaultHeaders;->thisT()Lio/netty/handler/codec/Headers;

    move-result-object v2

    return-object v2
.end method

.method public addBoolean(Ljava/lang/Object;Z)Lio/netty/handler/codec/Headers;
    .locals 1
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)TT;"
        }
    .end annotation

    .line 373
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v0, p2}, Lio/netty/handler/codec/ValueConverter;->convertBoolean(Z)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    move-result-object v0

    return-object v0
.end method

.method public addByte(Ljava/lang/Object;B)Lio/netty/handler/codec/Headers;
    .locals 1
    .param p2, "value"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;B)TT;"
        }
    .end annotation

    .line 383
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v0, p2}, Lio/netty/handler/codec/ValueConverter;->convertByte(B)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    move-result-object v0

    return-object v0
.end method

.method public addChar(Ljava/lang/Object;C)Lio/netty/handler/codec/Headers;
    .locals 1
    .param p2, "value"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;C)TT;"
        }
    .end annotation

    .line 368
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v0, p2}, Lio/netty/handler/codec/ValueConverter;->convertChar(C)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    move-result-object v0

    return-object v0
.end method

.method public addDouble(Ljava/lang/Object;D)Lio/netty/handler/codec/Headers;
    .locals 1
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;D)TT;"
        }
    .end annotation

    .line 358
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v0, p2, p3}, Lio/netty/handler/codec/ValueConverter;->convertDouble(D)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    move-result-object v0

    return-object v0
.end method

.method public addFloat(Ljava/lang/Object;F)Lio/netty/handler/codec/Headers;
    .locals 1
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;F)TT;"
        }
    .end annotation

    .line 378
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v0, p2}, Lio/netty/handler/codec/ValueConverter;->convertFloat(F)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    move-result-object v0

    return-object v0
.end method

.method protected addImpl(Lio/netty/handler/codec/Headers;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/Headers<",
            "+TK;+TV;*>;)V"
        }
    .end annotation

    .line 401
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "headers":Lio/netty/handler/codec/Headers;, "Lio/netty/handler/codec/Headers<+TK;+TV;*>;"
    instance-of v0, p1, Lio/netty/handler/codec/DefaultHeaders;

    if-eqz v0, :cond_2

    .line 403
    move-object v0, p1

    check-cast v0, Lio/netty/handler/codec/DefaultHeaders;

    .line 405
    .local v0, "defaultHeaders":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<+TK;+TV;TT;>;"
    iget-object v1, v0, Lio/netty/handler/codec/DefaultHeaders;->head:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    iget-object v1, v1, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->after:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    .line 406
    .local v1, "e":Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;, "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<+TK;+TV;>;"
    iget-object v2, v0, Lio/netty/handler/codec/DefaultHeaders;->hashingStrategy:Lio/netty/util/HashingStrategy;

    iget-object v3, p0, Lio/netty/handler/codec/DefaultHeaders;->hashingStrategy:Lio/netty/util/HashingStrategy;

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lio/netty/handler/codec/DefaultHeaders;->nameValidator:Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    iget-object v3, p0, Lio/netty/handler/codec/DefaultHeaders;->nameValidator:Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    if-ne v2, v3, :cond_0

    .line 409
    :goto_0
    iget-object v2, v0, Lio/netty/handler/codec/DefaultHeaders;->head:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    if-eq v1, v2, :cond_1

    .line 410
    iget v2, v1, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->hash:I

    iget v3, v1, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->hash:I

    invoke-direct {p0, v3}, Lio/netty/handler/codec/DefaultHeaders;->index(I)I

    move-result v3

    iget-object v4, v1, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->key:Ljava/lang/Object;

    iget-object v5, v1, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->value:Ljava/lang/Object;

    invoke-direct {p0, v2, v3, v4, v5}, Lio/netty/handler/codec/DefaultHeaders;->add0(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 411
    iget-object v1, v1, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->after:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    goto :goto_0

    .line 415
    :cond_0
    :goto_1
    iget-object v2, v0, Lio/netty/handler/codec/DefaultHeaders;->head:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    if-eq v1, v2, :cond_1

    .line 416
    iget-object v2, v1, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->key:Ljava/lang/Object;

    iget-object v3, v1, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->value:Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lio/netty/handler/codec/DefaultHeaders;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 417
    iget-object v1, v1, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->after:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    goto :goto_1

    .line 420
    .end local v0    # "defaultHeaders":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<+TK;+TV;TT;>;"
    .end local v1    # "e":Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;, "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<+TK;+TV;>;"
    :cond_1
    goto :goto_3

    .line 422
    :cond_2
    invoke-interface {p1}, Lio/netty/handler/codec/Headers;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 423
    .local v1, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lio/netty/handler/codec/DefaultHeaders;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 424
    .end local v1    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    goto :goto_2

    .line 426
    :cond_3
    :goto_3
    return-void
.end method

.method public addInt(Ljava/lang/Object;I)Lio/netty/handler/codec/Headers;
    .locals 1
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)TT;"
        }
    .end annotation

    .line 348
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v0, p2}, Lio/netty/handler/codec/ValueConverter;->convertInt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    move-result-object v0

    return-object v0
.end method

.method public addLong(Ljava/lang/Object;J)Lio/netty/handler/codec/Headers;
    .locals 1
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)TT;"
        }
    .end annotation

    .line 353
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v0, p2, p3}, Lio/netty/handler/codec/ValueConverter;->convertLong(J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    move-result-object v0

    return-object v0
.end method

.method public addObject(Ljava/lang/Object;Ljava/lang/Iterable;)Lio/netty/handler/codec/Headers;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "*>;)TT;"
        }
    .end annotation

    .line 332
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 333
    .local v1, "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, v1}, Lio/netty/handler/codec/DefaultHeaders;->addObject(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 334
    .end local v1    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 335
    :cond_0
    invoke-direct {p0}, Lio/netty/handler/codec/DefaultHeaders;->thisT()Lio/netty/handler/codec/Headers;

    move-result-object v0

    return-object v0
.end method

.method public addObject(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;
    .locals 2
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 327
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    const-string v1, "value"

    invoke-static {p2, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/netty/handler/codec/ValueConverter;->convertObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    move-result-object v0

    return-object v0
.end method

.method public varargs addObject(Ljava/lang/Object;[Ljava/lang/Object;)Lio/netty/handler/codec/Headers;
    .locals 3
    .param p2, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 340
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 341
    .local v2, "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, v2}, Lio/netty/handler/codec/DefaultHeaders;->addObject(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 340
    .end local v2    # "value":Ljava/lang/Object;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 343
    :cond_0
    invoke-direct {p0}, Lio/netty/handler/codec/DefaultHeaders;->thisT()Lio/netty/handler/codec/Headers;

    move-result-object v0

    return-object v0
.end method

.method public addShort(Ljava/lang/Object;S)Lio/netty/handler/codec/Headers;
    .locals 1
    .param p2, "value"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;S)TT;"
        }
    .end annotation

    .line 388
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v0, p2}, Lio/netty/handler/codec/ValueConverter;->convertShort(S)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    move-result-object v0

    return-object v0
.end method

.method public addTimeMillis(Ljava/lang/Object;J)Lio/netty/handler/codec/Headers;
    .locals 1
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)TT;"
        }
    .end annotation

    .line 363
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v0, p2, p3}, Lio/netty/handler/codec/ValueConverter;->convertTimeMillis(J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->add(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/netty/handler/codec/Headers;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 592
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->entries:[Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 593
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->head:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    iput-object v0, v0, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->after:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    iput-object v0, v0, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->before:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    .line 594
    const/4 v0, 0x0

    iput v0, p0, Lio/netty/handler/codec/DefaultHeaders;->size:I

    .line 595
    invoke-direct {p0}, Lio/netty/handler/codec/DefaultHeaders;->thisT()Lio/netty/handler/codec/Headers;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 195
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public contains(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .line 251
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    sget-object v0, Lio/netty/util/HashingStrategy;->JAVA_HASHER:Lio/netty/util/HashingStrategy;

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/handler/codec/DefaultHeaders;->contains(Ljava/lang/Object;Ljava/lang/Object;Lio/netty/util/HashingStrategy;)Z

    move-result v0

    return v0
.end method

.method public final contains(Ljava/lang/Object;Ljava/lang/Object;Lio/netty/util/HashingStrategy;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lio/netty/util/HashingStrategy<",
            "-TV;>;)Z"
        }
    .end annotation

    .line 255
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "valueHashingStrategy":Lio/netty/util/HashingStrategy;, "Lio/netty/util/HashingStrategy<-TV;>;"
    const-string v0, "name"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 257
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->hashingStrategy:Lio/netty/util/HashingStrategy;

    invoke-interface {v0, p1}, Lio/netty/util/HashingStrategy;->hashCode(Ljava/lang/Object;)I

    move-result v0

    .line 258
    .local v0, "h":I
    invoke-direct {p0, v0}, Lio/netty/handler/codec/DefaultHeaders;->index(I)I

    move-result v1

    .line 259
    .local v1, "i":I
    iget-object v2, p0, Lio/netty/handler/codec/DefaultHeaders;->entries:[Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    aget-object v2, v2, v1

    .line 260
    .local v2, "e":Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;, "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<TK;TV;>;"
    :goto_0
    if-eqz v2, :cond_1

    .line 261
    iget v3, v2, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->hash:I

    if-ne v3, v0, :cond_0

    iget-object v3, p0, Lio/netty/handler/codec/DefaultHeaders;->hashingStrategy:Lio/netty/util/HashingStrategy;

    iget-object v4, v2, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->key:Ljava/lang/Object;

    invoke-interface {v3, p1, v4}, Lio/netty/util/HashingStrategy;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->value:Ljava/lang/Object;

    invoke-interface {p3, p2, v3}, Lio/netty/util/HashingStrategy;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 262
    const/4 v3, 0x1

    return v3

    .line 264
    :cond_0
    iget-object v2, v2, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->next:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    goto :goto_0

    .line 266
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method public containsBoolean(Ljava/lang/Object;Z)Z
    .locals 1
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)Z"
        }
    .end annotation

    .line 205
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v0, p2}, Lio/netty/handler/codec/ValueConverter;->convertBoolean(Z)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsByte(Ljava/lang/Object;B)Z
    .locals 1
    .param p2, "value"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;B)Z"
        }
    .end annotation

    .line 210
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v0, p2}, Lio/netty/handler/codec/ValueConverter;->convertByte(B)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsChar(Ljava/lang/Object;C)Z
    .locals 1
    .param p2, "value"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;C)Z"
        }
    .end annotation

    .line 215
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v0, p2}, Lio/netty/handler/codec/ValueConverter;->convertChar(C)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsDouble(Ljava/lang/Object;D)Z
    .locals 1
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;D)Z"
        }
    .end annotation

    .line 240
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v0, p2, p3}, Lio/netty/handler/codec/ValueConverter;->convertDouble(D)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsFloat(Ljava/lang/Object;F)Z
    .locals 1
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;F)Z"
        }
    .end annotation

    .line 235
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v0, p2}, Lio/netty/handler/codec/ValueConverter;->convertFloat(F)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsInt(Ljava/lang/Object;I)Z
    .locals 1
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)Z"
        }
    .end annotation

    .line 225
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v0, p2}, Lio/netty/handler/codec/ValueConverter;->convertInt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsLong(Ljava/lang/Object;J)Z
    .locals 1
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)Z"
        }
    .end annotation

    .line 230
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v0, p2, p3}, Lio/netty/handler/codec/ValueConverter;->convertLong(J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsObject(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 200
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    const-string v1, "value"

    invoke-static {p2, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/netty/handler/codec/ValueConverter;->convertObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsShort(Ljava/lang/Object;S)Z
    .locals 1
    .param p2, "value"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;S)Z"
        }
    .end annotation

    .line 220
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v0, p2}, Lio/netty/handler/codec/ValueConverter;->convertShort(S)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsTimeMillis(Ljava/lang/Object;J)Z
    .locals 1
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)Z"
        }
    .end annotation

    .line 245
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v0, p2, p3}, Lio/netty/handler/codec/ValueConverter;->convertTimeMillis(J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public copy()Lio/netty/handler/codec/DefaultHeaders;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/handler/codec/DefaultHeaders<",
            "TK;TV;TT;>;"
        }
    .end annotation

    .line 1038
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    new-instance v0, Lio/netty/handler/codec/DefaultHeaders;

    iget-object v1, p0, Lio/netty/handler/codec/DefaultHeaders;->hashingStrategy:Lio/netty/util/HashingStrategy;

    iget-object v2, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    iget-object v3, p0, Lio/netty/handler/codec/DefaultHeaders;->nameValidator:Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    iget-object v4, p0, Lio/netty/handler/codec/DefaultHeaders;->entries:[Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    array-length v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Lio/netty/handler/codec/DefaultHeaders;-><init>(Lio/netty/util/HashingStrategy;Lio/netty/handler/codec/ValueConverter;Lio/netty/handler/codec/DefaultHeaders$NameValidator;I)V

    .line 1040
    .local v0, "copy":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    invoke-virtual {v0, p0}, Lio/netty/handler/codec/DefaultHeaders;->addImpl(Lio/netty/handler/codec/Headers;)V

    .line 1041
    return-object v0
.end method

.method public final equals(Lio/netty/handler/codec/Headers;Lio/netty/util/HashingStrategy;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/Headers<",
            "TK;TV;*>;",
            "Lio/netty/util/HashingStrategy<",
            "TV;>;)Z"
        }
    .end annotation

    .line 915
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "h2":Lio/netty/handler/codec/Headers;, "Lio/netty/handler/codec/Headers<TK;TV;*>;"
    .local p2, "valueHashingStrategy":Lio/netty/util/HashingStrategy;, "Lio/netty/util/HashingStrategy<TV;>;"
    invoke-interface {p1}, Lio/netty/handler/codec/Headers;->size()I

    move-result v0

    invoke-virtual {p0}, Lio/netty/handler/codec/DefaultHeaders;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 916
    return v2

    .line 919
    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    .line 920
    return v0

    .line 923
    :cond_1
    invoke-virtual {p0}, Lio/netty/handler/codec/DefaultHeaders;->names()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 924
    .local v3, "name":Ljava/lang/Object;, "TK;"
    invoke-interface {p1, v3}, Lio/netty/handler/codec/Headers;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 925
    .local v4, "otherValues":Ljava/util/List;, "Ljava/util/List<TV;>;"
    invoke-virtual {p0, v3}, Lio/netty/handler/codec/DefaultHeaders;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 926
    .local v5, "values":Ljava/util/List;, "Ljava/util/List<TV;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-eq v6, v7, :cond_2

    .line 927
    return v2

    .line 929
    :cond_2
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 930
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {p2, v7, v8}, Lio/netty/util/HashingStrategy;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 931
    return v2

    .line 929
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 934
    .end local v3    # "name":Ljava/lang/Object;, "TK;"
    .end local v4    # "otherValues":Ljava/util/List;, "Ljava/util/List<TV;>;"
    .end local v5    # "values":Ljava/util/List;, "Ljava/util/List<TV;>;"
    .end local v6    # "i":I
    :cond_4
    goto :goto_0

    .line 935
    :cond_5
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 894
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    instance-of v0, p1, Lio/netty/handler/codec/Headers;

    if-nez v0, :cond_0

    .line 895
    const/4 v0, 0x0

    return v0

    .line 898
    :cond_0
    move-object v0, p1

    check-cast v0, Lio/netty/handler/codec/Headers;

    sget-object v1, Lio/netty/util/HashingStrategy;->JAVA_HASHER:Lio/netty/util/HashingStrategy;

    invoke-virtual {p0, v0, v1}, Lio/netty/handler/codec/DefaultHeaders;->equals(Lio/netty/handler/codec/Headers;Lio/netty/util/HashingStrategy;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 118
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    const-string v0, "name"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->hashingStrategy:Lio/netty/util/HashingStrategy;

    invoke-interface {v0, p1}, Lio/netty/util/HashingStrategy;->hashCode(Ljava/lang/Object;)I

    move-result v0

    .line 121
    .local v0, "h":I
    invoke-direct {p0, v0}, Lio/netty/handler/codec/DefaultHeaders;->index(I)I

    move-result v1

    .line 122
    .local v1, "i":I
    iget-object v2, p0, Lio/netty/handler/codec/DefaultHeaders;->entries:[Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    aget-object v2, v2, v1

    .line 123
    .local v2, "e":Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;, "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<TK;TV;>;"
    const/4 v3, 0x0

    .line 125
    .local v3, "value":Ljava/lang/Object;, "TV;"
    :goto_0
    if-eqz v2, :cond_1

    .line 126
    iget v4, v2, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->hash:I

    if-ne v4, v0, :cond_0

    iget-object v4, p0, Lio/netty/handler/codec/DefaultHeaders;->hashingStrategy:Lio/netty/util/HashingStrategy;

    iget-object v5, v2, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->key:Ljava/lang/Object;

    invoke-interface {v4, p1, v5}, Lio/netty/util/HashingStrategy;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 127
    iget-object v3, v2, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->value:Ljava/lang/Object;

    .line 130
    :cond_0
    iget-object v2, v2, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->next:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    goto :goto_0

    .line 132
    :cond_1
    return-object v3
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 137
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 138
    .local v0, "value":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_0

    .line 139
    return-object p2

    .line 141
    :cond_0
    return-object v0
.end method

.method public getAll(Ljava/lang/Object;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 161
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    const-string v0, "name"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 163
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 165
    .local v0, "values":Ljava/util/LinkedList;, "Ljava/util/LinkedList<TV;>;"
    iget-object v1, p0, Lio/netty/handler/codec/DefaultHeaders;->hashingStrategy:Lio/netty/util/HashingStrategy;

    invoke-interface {v1, p1}, Lio/netty/util/HashingStrategy;->hashCode(Ljava/lang/Object;)I

    move-result v1

    .line 166
    .local v1, "h":I
    invoke-direct {p0, v1}, Lio/netty/handler/codec/DefaultHeaders;->index(I)I

    move-result v2

    .line 167
    .local v2, "i":I
    iget-object v3, p0, Lio/netty/handler/codec/DefaultHeaders;->entries:[Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    aget-object v3, v3, v2

    .line 168
    .local v3, "e":Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;, "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<TK;TV;>;"
    :goto_0
    if-eqz v3, :cond_1

    .line 169
    iget v4, v3, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->hash:I

    if-ne v4, v1, :cond_0

    iget-object v4, p0, Lio/netty/handler/codec/DefaultHeaders;->hashingStrategy:Lio/netty/util/HashingStrategy;

    iget-object v5, v3, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->key:Ljava/lang/Object;

    invoke-interface {v4, p1, v5}, Lio/netty/util/HashingStrategy;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 170
    invoke-virtual {v3}, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 172
    :cond_0
    iget-object v3, v3, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->next:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    goto :goto_0

    .line 174
    :cond_1
    return-object v0
.end method

.method public getAllAndRemove(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 188
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 189
    .local v0, "all":Ljava/util/List;, "Ljava/util/List<TV;>;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->remove(Ljava/lang/Object;)Z

    .line 190
    return-object v0
.end method

.method public getAndRemove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 146
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->hashingStrategy:Lio/netty/util/HashingStrategy;

    invoke-interface {v0, p1}, Lio/netty/util/HashingStrategy;->hashCode(Ljava/lang/Object;)I

    move-result v0

    .line 147
    .local v0, "h":I
    invoke-direct {p0, v0}, Lio/netty/handler/codec/DefaultHeaders;->index(I)I

    move-result v1

    const-string v2, "name"

    invoke-static {p1, v2}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lio/netty/handler/codec/DefaultHeaders;->remove0(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getAndRemove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 152
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getAndRemove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 153
    .local v0, "value":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_0

    .line 154
    return-object p2

    .line 156
    :cond_0
    return-object v0
.end method

.method public getBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 605
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 607
    .local v0, "v":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v2, v0}, Lio/netty/handler/codec/ValueConverter;->convertToBoolean(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 608
    :catch_0
    move-exception v2

    .line 609
    .local v2, "ignore":Ljava/lang/RuntimeException;
    return-object v1

    .line 607
    .end local v2    # "ignore":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-object v1
.end method

.method public getBoolean(Ljava/lang/Object;Z)Z
    .locals 2
    .param p2, "defaultValue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)Z"
        }
    .end annotation

    .line 615
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    .line 616
    .local v0, "v":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    return v1
.end method

.method public getBooleanAndRemove(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 749
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getAndRemove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 751
    .local v0, "v":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v2, v0}, Lio/netty/handler/codec/ValueConverter;->convertToBoolean(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 752
    :catch_0
    move-exception v2

    .line 753
    .local v2, "ignore":Ljava/lang/RuntimeException;
    return-object v1

    .line 751
    .end local v2    # "ignore":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-object v1
.end method

.method public getBooleanAndRemove(Ljava/lang/Object;Z)Z
    .locals 2
    .param p2, "defaultValue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)Z"
        }
    .end annotation

    .line 759
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getBooleanAndRemove(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    .line 760
    .local v0, "v":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    return v1
.end method

.method public getByte(Ljava/lang/Object;B)B
    .locals 2
    .param p2, "defaultValue"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;B)B"
        }
    .end annotation

    .line 631
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getByte(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object v0

    .line 632
    .local v0, "v":Ljava/lang/Byte;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    return v1
.end method

.method public getByte(Ljava/lang/Object;)Ljava/lang/Byte;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Byte;"
        }
    .end annotation

    .line 621
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 623
    .local v0, "v":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v2, v0}, Lio/netty/handler/codec/ValueConverter;->convertToByte(Ljava/lang/Object;)B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 624
    :catch_0
    move-exception v2

    .line 625
    .local v2, "ignore":Ljava/lang/RuntimeException;
    return-object v1

    .line 623
    .end local v2    # "ignore":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-object v1
.end method

.method public getByteAndRemove(Ljava/lang/Object;B)B
    .locals 2
    .param p2, "defaultValue"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;B)B"
        }
    .end annotation

    .line 775
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getByteAndRemove(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object v0

    .line 776
    .local v0, "v":Ljava/lang/Byte;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    return v1
.end method

.method public getByteAndRemove(Ljava/lang/Object;)Ljava/lang/Byte;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Byte;"
        }
    .end annotation

    .line 765
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getAndRemove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 767
    .local v0, "v":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v2, v0}, Lio/netty/handler/codec/ValueConverter;->convertToByte(Ljava/lang/Object;)B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 768
    :catch_0
    move-exception v2

    .line 769
    .local v2, "ignore":Ljava/lang/RuntimeException;
    return-object v1

    .line 767
    .end local v2    # "ignore":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-object v1
.end method

.method public getChar(Ljava/lang/Object;C)C
    .locals 2
    .param p2, "defaultValue"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;C)C"
        }
    .end annotation

    .line 647
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getChar(Ljava/lang/Object;)Ljava/lang/Character;

    move-result-object v0

    .line 648
    .local v0, "v":Ljava/lang/Character;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    return v1
.end method

.method public getChar(Ljava/lang/Object;)Ljava/lang/Character;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Character;"
        }
    .end annotation

    .line 637
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 639
    .local v0, "v":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v2, v0}, Lio/netty/handler/codec/ValueConverter;->convertToChar(Ljava/lang/Object;)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 640
    :catch_0
    move-exception v2

    .line 641
    .local v2, "ignore":Ljava/lang/RuntimeException;
    return-object v1

    .line 639
    .end local v2    # "ignore":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-object v1
.end method

.method public getCharAndRemove(Ljava/lang/Object;C)C
    .locals 2
    .param p2, "defaultValue"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;C)C"
        }
    .end annotation

    .line 791
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getCharAndRemove(Ljava/lang/Object;)Ljava/lang/Character;

    move-result-object v0

    .line 792
    .local v0, "v":Ljava/lang/Character;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    return v1
.end method

.method public getCharAndRemove(Ljava/lang/Object;)Ljava/lang/Character;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Character;"
        }
    .end annotation

    .line 781
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getAndRemove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 783
    .local v0, "v":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v2, v0}, Lio/netty/handler/codec/ValueConverter;->convertToChar(Ljava/lang/Object;)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 784
    :catch_0
    move-exception v2

    .line 785
    .local v2, "ignore":Ljava/lang/RuntimeException;
    return-object v1

    .line 783
    .end local v2    # "ignore":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-object v1
.end method

.method public getDouble(Ljava/lang/Object;D)D
    .locals 3
    .param p2, "defaultValue"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;D)D"
        }
    .end annotation

    .line 727
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    .line 728
    .local v0, "v":Ljava/lang/Double;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    goto :goto_0

    :cond_0
    move-wide v1, p2

    :goto_0
    return-wide v1
.end method

.method public getDouble(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Double;"
        }
    .end annotation

    .line 717
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 719
    .local v0, "v":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v2, v0}, Lio/netty/handler/codec/ValueConverter;->convertToDouble(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 720
    :catch_0
    move-exception v2

    .line 721
    .local v2, "ignore":Ljava/lang/RuntimeException;
    return-object v1

    .line 719
    .end local v2    # "ignore":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-object v1
.end method

.method public getDoubleAndRemove(Ljava/lang/Object;D)D
    .locals 3
    .param p2, "defaultValue"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;D)D"
        }
    .end annotation

    .line 871
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getDoubleAndRemove(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    .line 872
    .local v0, "v":Ljava/lang/Double;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    goto :goto_0

    :cond_0
    move-wide v1, p2

    :goto_0
    return-wide v1
.end method

.method public getDoubleAndRemove(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Double;"
        }
    .end annotation

    .line 861
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getAndRemove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 863
    .local v0, "v":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v2, v0}, Lio/netty/handler/codec/ValueConverter;->convertToDouble(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 864
    :catch_0
    move-exception v2

    .line 865
    .local v2, "ignore":Ljava/lang/RuntimeException;
    return-object v1

    .line 863
    .end local v2    # "ignore":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-object v1
.end method

.method public getFloat(Ljava/lang/Object;F)F
    .locals 2
    .param p2, "defaultValue"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;F)F"
        }
    .end annotation

    .line 711
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v0

    .line 712
    .local v0, "v":Ljava/lang/Float;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    return v1
.end method

.method public getFloat(Ljava/lang/Object;)Ljava/lang/Float;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Float;"
        }
    .end annotation

    .line 701
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 703
    .local v0, "v":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v2, v0}, Lio/netty/handler/codec/ValueConverter;->convertToFloat(Ljava/lang/Object;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 704
    :catch_0
    move-exception v2

    .line 705
    .local v2, "ignore":Ljava/lang/RuntimeException;
    return-object v1

    .line 703
    .end local v2    # "ignore":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-object v1
.end method

.method public getFloatAndRemove(Ljava/lang/Object;F)F
    .locals 2
    .param p2, "defaultValue"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;F)F"
        }
    .end annotation

    .line 855
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getFloatAndRemove(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v0

    .line 856
    .local v0, "v":Ljava/lang/Float;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    return v1
.end method

.method public getFloatAndRemove(Ljava/lang/Object;)Ljava/lang/Float;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Float;"
        }
    .end annotation

    .line 845
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getAndRemove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 847
    .local v0, "v":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v2, v0}, Lio/netty/handler/codec/ValueConverter;->convertToFloat(Ljava/lang/Object;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 848
    :catch_0
    move-exception v2

    .line 849
    .local v2, "ignore":Ljava/lang/RuntimeException;
    return-object v1

    .line 847
    .end local v2    # "ignore":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-object v1
.end method

.method public getInt(Ljava/lang/Object;I)I
    .locals 2
    .param p2, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)I"
        }
    .end annotation

    .line 679
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    .line 680
    .local v0, "v":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    return v1
.end method

.method public getInt(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 669
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 671
    .local v0, "v":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v2, v0}, Lio/netty/handler/codec/ValueConverter;->convertToInt(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 672
    :catch_0
    move-exception v2

    .line 673
    .local v2, "ignore":Ljava/lang/RuntimeException;
    return-object v1

    .line 671
    .end local v2    # "ignore":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-object v1
.end method

.method public getIntAndRemove(Ljava/lang/Object;I)I
    .locals 2
    .param p2, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)I"
        }
    .end annotation

    .line 823
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getIntAndRemove(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    .line 824
    .local v0, "v":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    return v1
.end method

.method public getIntAndRemove(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .line 813
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getAndRemove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 815
    .local v0, "v":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v2, v0}, Lio/netty/handler/codec/ValueConverter;->convertToInt(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 816
    :catch_0
    move-exception v2

    .line 817
    .local v2, "ignore":Ljava/lang/RuntimeException;
    return-object v1

    .line 815
    .end local v2    # "ignore":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-object v1
.end method

.method public getLong(Ljava/lang/Object;J)J
    .locals 3
    .param p2, "defaultValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)J"
        }
    .end annotation

    .line 695
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    .line 696
    .local v0, "v":Ljava/lang/Long;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    move-wide v1, p2

    :goto_0
    return-wide v1
.end method

.method public getLong(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .line 685
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 687
    .local v0, "v":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v2, v0}, Lio/netty/handler/codec/ValueConverter;->convertToLong(Ljava/lang/Object;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 688
    :catch_0
    move-exception v2

    .line 689
    .local v2, "ignore":Ljava/lang/RuntimeException;
    return-object v1

    .line 687
    .end local v2    # "ignore":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-object v1
.end method

.method public getLongAndRemove(Ljava/lang/Object;J)J
    .locals 3
    .param p2, "defaultValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)J"
        }
    .end annotation

    .line 839
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getLongAndRemove(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    .line 840
    .local v0, "v":Ljava/lang/Long;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    move-wide v1, p2

    :goto_0
    return-wide v1
.end method

.method public getLongAndRemove(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .line 829
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getAndRemove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 831
    .local v0, "v":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v2, v0}, Lio/netty/handler/codec/ValueConverter;->convertToLong(Ljava/lang/Object;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 832
    :catch_0
    move-exception v2

    .line 833
    .local v2, "ignore":Ljava/lang/RuntimeException;
    return-object v1

    .line 831
    .end local v2    # "ignore":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-object v1
.end method

.method public getShort(Ljava/lang/Object;)Ljava/lang/Short;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Short;"
        }
    .end annotation

    .line 653
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 655
    .local v0, "v":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v2, v0}, Lio/netty/handler/codec/ValueConverter;->convertToShort(Ljava/lang/Object;)S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 656
    :catch_0
    move-exception v2

    .line 657
    .local v2, "ignore":Ljava/lang/RuntimeException;
    return-object v1

    .line 655
    .end local v2    # "ignore":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-object v1
.end method

.method public getShort(Ljava/lang/Object;S)S
    .locals 2
    .param p2, "defaultValue"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;S)S"
        }
    .end annotation

    .line 663
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getShort(Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object v0

    .line 664
    .local v0, "v":Ljava/lang/Short;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    return v1
.end method

.method public getShortAndRemove(Ljava/lang/Object;)Ljava/lang/Short;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Short;"
        }
    .end annotation

    .line 797
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getAndRemove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 799
    .local v0, "v":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v2, v0}, Lio/netty/handler/codec/ValueConverter;->convertToShort(Ljava/lang/Object;)S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 800
    :catch_0
    move-exception v2

    .line 801
    .local v2, "ignore":Ljava/lang/RuntimeException;
    return-object v1

    .line 799
    .end local v2    # "ignore":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-object v1
.end method

.method public getShortAndRemove(Ljava/lang/Object;S)S
    .locals 2
    .param p2, "defaultValue"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;S)S"
        }
    .end annotation

    .line 807
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getShortAndRemove(Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object v0

    .line 808
    .local v0, "v":Ljava/lang/Short;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    return v1
.end method

.method public getTimeMillis(Ljava/lang/Object;J)J
    .locals 3
    .param p2, "defaultValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)J"
        }
    .end annotation

    .line 743
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getTimeMillis(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    .line 744
    .local v0, "v":Ljava/lang/Long;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    move-wide v1, p2

    :goto_0
    return-wide v1
.end method

.method public getTimeMillis(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .line 733
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 735
    .local v0, "v":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v2, v0}, Lio/netty/handler/codec/ValueConverter;->convertToTimeMillis(Ljava/lang/Object;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 736
    :catch_0
    move-exception v2

    .line 737
    .local v2, "ignore":Ljava/lang/RuntimeException;
    return-object v1

    .line 735
    .end local v2    # "ignore":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-object v1
.end method

.method public getTimeMillisAndRemove(Ljava/lang/Object;J)J
    .locals 3
    .param p2, "defaultValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)J"
        }
    .end annotation

    .line 887
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getTimeMillisAndRemove(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v0

    .line 888
    .local v0, "v":Ljava/lang/Long;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    move-wide v1, p2

    :goto_0
    return-wide v1
.end method

.method public getTimeMillisAndRemove(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .line 877
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getAndRemove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 879
    .local v0, "v":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v2, v0}, Lio/netty/handler/codec/ValueConverter;->convertToTimeMillis(Ljava/lang/Object;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 880
    :catch_0
    move-exception v2

    .line 881
    .local v2, "ignore":Ljava/lang/RuntimeException;
    return-object v1

    .line 879
    .end local v2    # "ignore":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-object v1
.end method

.method public hashCode()I
    .locals 1

    .line 904
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    sget-object v0, Lio/netty/util/HashingStrategy;->JAVA_HASHER:Lio/netty/util/HashingStrategy;

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/DefaultHeaders;->hashCode(Lio/netty/util/HashingStrategy;)I

    move-result v0

    return v0
.end method

.method public final hashCode(Lio/netty/util/HashingStrategy;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/HashingStrategy<",
            "TV;>;)I"
        }
    .end annotation

    .line 944
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "valueHashingStrategy":Lio/netty/util/HashingStrategy;, "Lio/netty/util/HashingStrategy<TV;>;"
    const v0, -0x3d4d51cb

    .line 945
    .local v0, "result":I
    invoke-virtual {p0}, Lio/netty/handler/codec/DefaultHeaders;->names()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 946
    .local v2, "name":Ljava/lang/Object;, "TK;"
    mul-int/lit8 v3, v0, 0x1f

    iget-object v4, p0, Lio/netty/handler/codec/DefaultHeaders;->hashingStrategy:Lio/netty/util/HashingStrategy;

    invoke-interface {v4, v2}, Lio/netty/util/HashingStrategy;->hashCode(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v3, v4

    .line 947
    .end local v0    # "result":I
    .local v3, "result":I
    invoke-virtual {p0, v2}, Lio/netty/handler/codec/DefaultHeaders;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 948
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<TV;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 949
    mul-int/lit8 v5, v3, 0x1f

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p1, v6}, Lio/netty/util/HashingStrategy;->hashCode(Ljava/lang/Object;)I

    move-result v6

    add-int v3, v5, v6

    .line 948
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 951
    .end local v0    # "values":Ljava/util/List;, "Ljava/util/List<TV;>;"
    .end local v2    # "name":Ljava/lang/Object;, "TK;"
    .end local v4    # "i":I
    :cond_0
    move v0, v3

    goto :goto_0

    .line 952
    .end local v3    # "result":I
    .local v0, "result":I
    :cond_1
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 276
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->head:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    iget-object v1, v0, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->after:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 600
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    new-instance v0, Lio/netty/handler/codec/DefaultHeaders$HeaderIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/netty/handler/codec/DefaultHeaders$HeaderIterator;-><init>(Lio/netty/handler/codec/DefaultHeaders;Lio/netty/handler/codec/DefaultHeaders$1;)V

    return-object v0
.end method

.method public names()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 281
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    invoke-virtual {p0}, Lio/netty/handler/codec/DefaultHeaders;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 284
    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Lio/netty/handler/codec/DefaultHeaders;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 285
    .local v0, "names":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    iget-object v1, p0, Lio/netty/handler/codec/DefaultHeaders;->head:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    iget-object v1, v1, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->after:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    .line 286
    .local v1, "e":Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;, "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<TK;TV;>;"
    :goto_0
    iget-object v2, p0, Lio/netty/handler/codec/DefaultHeaders;->head:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    if-eq v1, v2, :cond_1

    .line 287
    invoke-virtual {v1}, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object v1, v1, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;->after:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    goto :goto_0

    .line 290
    :cond_1
    return-object v0
.end method

.method protected newHeaderEntry(ILjava/lang/Object;Ljava/lang/Object;Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;)Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;
    .locals 7
    .param p1, "h"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;",
            "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<",
            "TK;TV;>;)",
            "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 961
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p2, "name":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    .local p4, "next":Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;, "Lio/netty/handler/codec/DefaultHeaders$HeaderEntry<TK;TV;>;"
    new-instance v6, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    iget-object v5, p0, Lio/netty/handler/codec/DefaultHeaders;->head:Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;

    move-object v0, v6

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;-><init>(ILjava/lang/Object;Ljava/lang/Object;Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;Lio/netty/handler/codec/DefaultHeaders$HeaderEntry;)V

    return-object v6
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 587
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->getAndRemove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public set(Lio/netty/handler/codec/Headers;)Lio/netty/handler/codec/Headers;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/Headers<",
            "+TK;+TV;*>;)TT;"
        }
    .end annotation

    .line 567
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "headers":Lio/netty/handler/codec/Headers;, "Lio/netty/handler/codec/Headers<+TK;+TV;*>;"
    if-eq p1, p0, :cond_0

    .line 568
    invoke-virtual {p0}, Lio/netty/handler/codec/DefaultHeaders;->clear()Lio/netty/handler/codec/Headers;

    .line 569
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->addImpl(Lio/netty/handler/codec/Headers;)V

    .line 571
    :cond_0
    invoke-direct {p0}, Lio/netty/handler/codec/DefaultHeaders;->thisT()Lio/netty/handler/codec/Headers;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Iterable;)Lio/netty/handler/codec/Headers;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)TT;"
        }
    .end annotation

    .line 441
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->nameValidator:Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/DefaultHeaders$NameValidator;->validateName(Ljava/lang/Object;)V

    .line 442
    const-string v0, "values"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 444
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->hashingStrategy:Lio/netty/util/HashingStrategy;

    invoke-interface {v0, p1}, Lio/netty/util/HashingStrategy;->hashCode(Ljava/lang/Object;)I

    move-result v0

    .line 445
    .local v0, "h":I
    invoke-direct {p0, v0}, Lio/netty/handler/codec/DefaultHeaders;->index(I)I

    move-result v1

    .line 447
    .local v1, "i":I
    invoke-direct {p0, v0, v1, p1}, Lio/netty/handler/codec/DefaultHeaders;->remove0(IILjava/lang/Object;)Ljava/lang/Object;

    .line 448
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 449
    .local v3, "v":Ljava/lang/Object;, "TV;"
    if-nez v3, :cond_0

    .line 450
    goto :goto_1

    .line 452
    :cond_0
    invoke-direct {p0, v0, v1, p1, v3}, Lio/netty/handler/codec/DefaultHeaders;->add0(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 453
    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    goto :goto_0

    .line 455
    :cond_1
    :goto_1
    invoke-direct {p0}, Lio/netty/handler/codec/DefaultHeaders;->thisT()Lio/netty/handler/codec/Headers;

    move-result-object v2

    return-object v2
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TT;"
        }
    .end annotation

    .line 430
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->nameValidator:Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/DefaultHeaders$NameValidator;->validateName(Ljava/lang/Object;)V

    .line 431
    const-string v0, "value"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 432
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->hashingStrategy:Lio/netty/util/HashingStrategy;

    invoke-interface {v0, p1}, Lio/netty/util/HashingStrategy;->hashCode(Ljava/lang/Object;)I

    move-result v0

    .line 433
    .local v0, "h":I
    invoke-direct {p0, v0}, Lio/netty/handler/codec/DefaultHeaders;->index(I)I

    move-result v1

    .line 434
    .local v1, "i":I
    invoke-direct {p0, v0, v1, p1}, Lio/netty/handler/codec/DefaultHeaders;->remove0(IILjava/lang/Object;)Ljava/lang/Object;

    .line 435
    invoke-direct {p0, v0, v1, p1, p2}, Lio/netty/handler/codec/DefaultHeaders;->add0(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 436
    invoke-direct {p0}, Lio/netty/handler/codec/DefaultHeaders;->thisT()Lio/netty/handler/codec/Headers;

    move-result-object v2

    return-object v2
.end method

.method public varargs set(Ljava/lang/Object;[Ljava/lang/Object;)Lio/netty/handler/codec/Headers;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[TV;)TT;"
        }
    .end annotation

    .line 460
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    .local p2, "values":[Ljava/lang/Object;, "[TV;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->nameValidator:Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/DefaultHeaders$NameValidator;->validateName(Ljava/lang/Object;)V

    .line 461
    const-string v0, "values"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 463
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->hashingStrategy:Lio/netty/util/HashingStrategy;

    invoke-interface {v0, p1}, Lio/netty/util/HashingStrategy;->hashCode(Ljava/lang/Object;)I

    move-result v0

    .line 464
    .local v0, "h":I
    invoke-direct {p0, v0}, Lio/netty/handler/codec/DefaultHeaders;->index(I)I

    move-result v1

    .line 466
    .local v1, "i":I
    invoke-direct {p0, v0, v1, p1}, Lio/netty/handler/codec/DefaultHeaders;->remove0(IILjava/lang/Object;)Ljava/lang/Object;

    .line 467
    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p2, v3

    .line 468
    .local v4, "v":Ljava/lang/Object;, "TV;"
    if-nez v4, :cond_0

    .line 469
    goto :goto_1

    .line 471
    :cond_0
    invoke-direct {p0, v0, v1, p1, v4}, Lio/netty/handler/codec/DefaultHeaders;->add0(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 467
    .end local v4    # "v":Ljava/lang/Object;, "TV;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 474
    :cond_1
    :goto_1
    invoke-direct {p0}, Lio/netty/handler/codec/DefaultHeaders;->thisT()Lio/netty/handler/codec/Headers;

    move-result-object v2

    return-object v2
.end method

.method public setAll(Lio/netty/handler/codec/Headers;)Lio/netty/handler/codec/Headers;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/Headers<",
            "+TK;+TV;*>;)TT;"
        }
    .end annotation

    .line 576
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "headers":Lio/netty/handler/codec/Headers;, "Lio/netty/handler/codec/Headers<+TK;+TV;*>;"
    if-eq p1, p0, :cond_1

    .line 577
    invoke-interface {p1}, Lio/netty/handler/codec/Headers;->names()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 578
    .local v1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v1}, Lio/netty/handler/codec/DefaultHeaders;->remove(Ljava/lang/Object;)Z

    .line 579
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    goto :goto_0

    .line 580
    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/DefaultHeaders;->addImpl(Lio/netty/handler/codec/Headers;)V

    .line 582
    :cond_1
    invoke-direct {p0}, Lio/netty/handler/codec/DefaultHeaders;->thisT()Lio/netty/handler/codec/Headers;

    move-result-object v0

    return-object v0
.end method

.method public setBoolean(Ljava/lang/Object;Z)Lio/netty/handler/codec/Headers;
    .locals 1
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)TT;"
        }
    .end annotation

    .line 552
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v0, p2}, Lio/netty/handler/codec/ValueConverter;->convertBoolean(Z)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    move-result-object v0

    return-object v0
.end method

.method public setByte(Ljava/lang/Object;B)Lio/netty/handler/codec/Headers;
    .locals 1
    .param p2, "value"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;B)TT;"
        }
    .end annotation

    .line 557
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v0, p2}, Lio/netty/handler/codec/ValueConverter;->convertByte(B)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    move-result-object v0

    return-object v0
.end method

.method public setChar(Ljava/lang/Object;C)Lio/netty/handler/codec/Headers;
    .locals 1
    .param p2, "value"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;C)TT;"
        }
    .end annotation

    .line 547
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v0, p2}, Lio/netty/handler/codec/ValueConverter;->convertChar(C)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    move-result-object v0

    return-object v0
.end method

.method public setDouble(Ljava/lang/Object;D)Lio/netty/handler/codec/Headers;
    .locals 1
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;D)TT;"
        }
    .end annotation

    .line 532
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v0, p2, p3}, Lio/netty/handler/codec/ValueConverter;->convertDouble(D)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    move-result-object v0

    return-object v0
.end method

.method public setFloat(Ljava/lang/Object;F)Lio/netty/handler/codec/Headers;
    .locals 1
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;F)TT;"
        }
    .end annotation

    .line 542
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v0, p2}, Lio/netty/handler/codec/ValueConverter;->convertFloat(F)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    move-result-object v0

    return-object v0
.end method

.method public setInt(Ljava/lang/Object;I)Lio/netty/handler/codec/Headers;
    .locals 1
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)TT;"
        }
    .end annotation

    .line 522
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v0, p2}, Lio/netty/handler/codec/ValueConverter;->convertInt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    move-result-object v0

    return-object v0
.end method

.method public setLong(Ljava/lang/Object;J)Lio/netty/handler/codec/Headers;
    .locals 1
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)TT;"
        }
    .end annotation

    .line 527
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v0, p2, p3}, Lio/netty/handler/codec/ValueConverter;->convertLong(J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    move-result-object v0

    return-object v0
.end method

.method public setObject(Ljava/lang/Object;Ljava/lang/Iterable;)Lio/netty/handler/codec/Headers;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "*>;)TT;"
        }
    .end annotation

    .line 486
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->nameValidator:Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/DefaultHeaders$NameValidator;->validateName(Ljava/lang/Object;)V

    .line 488
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->hashingStrategy:Lio/netty/util/HashingStrategy;

    invoke-interface {v0, p1}, Lio/netty/util/HashingStrategy;->hashCode(Ljava/lang/Object;)I

    move-result v0

    .line 489
    .local v0, "h":I
    invoke-direct {p0, v0}, Lio/netty/handler/codec/DefaultHeaders;->index(I)I

    move-result v1

    .line 491
    .local v1, "i":I
    invoke-direct {p0, v0, v1, p1}, Lio/netty/handler/codec/DefaultHeaders;->remove0(IILjava/lang/Object;)Ljava/lang/Object;

    .line 492
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 493
    .local v3, "v":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 494
    goto :goto_1

    .line 496
    :cond_0
    iget-object v4, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v4, v3}, Lio/netty/handler/codec/ValueConverter;->convertObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v0, v1, p1, v4}, Lio/netty/handler/codec/DefaultHeaders;->add0(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 497
    .end local v3    # "v":Ljava/lang/Object;
    goto :goto_0

    .line 499
    :cond_1
    :goto_1
    invoke-direct {p0}, Lio/netty/handler/codec/DefaultHeaders;->thisT()Lio/netty/handler/codec/Headers;

    move-result-object v2

    return-object v2
.end method

.method public setObject(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;
    .locals 2
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 479
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    const-string v0, "value"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 480
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v0, p2}, Lio/netty/handler/codec/ValueConverter;->convertObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "convertedValue"

    invoke-static {v0, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 481
    .local v0, "convertedValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    move-result-object v1

    return-object v1
.end method

.method public varargs setObject(Ljava/lang/Object;[Ljava/lang/Object;)Lio/netty/handler/codec/Headers;
    .locals 6
    .param p2, "values"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 504
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->nameValidator:Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/DefaultHeaders$NameValidator;->validateName(Ljava/lang/Object;)V

    .line 506
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->hashingStrategy:Lio/netty/util/HashingStrategy;

    invoke-interface {v0, p1}, Lio/netty/util/HashingStrategy;->hashCode(Ljava/lang/Object;)I

    move-result v0

    .line 507
    .local v0, "h":I
    invoke-direct {p0, v0}, Lio/netty/handler/codec/DefaultHeaders;->index(I)I

    move-result v1

    .line 509
    .local v1, "i":I
    invoke-direct {p0, v0, v1, p1}, Lio/netty/handler/codec/DefaultHeaders;->remove0(IILjava/lang/Object;)Ljava/lang/Object;

    .line 510
    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p2, v3

    .line 511
    .local v4, "v":Ljava/lang/Object;
    if-nez v4, :cond_0

    .line 512
    goto :goto_1

    .line 514
    :cond_0
    iget-object v5, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v5, v4}, Lio/netty/handler/codec/ValueConverter;->convertObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v0, v1, p1, v5}, Lio/netty/handler/codec/DefaultHeaders;->add0(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 510
    .end local v4    # "v":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 517
    :cond_1
    :goto_1
    invoke-direct {p0}, Lio/netty/handler/codec/DefaultHeaders;->thisT()Lio/netty/handler/codec/Headers;

    move-result-object v2

    return-object v2
.end method

.method public setShort(Ljava/lang/Object;S)Lio/netty/handler/codec/Headers;
    .locals 1
    .param p2, "value"    # S
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;S)TT;"
        }
    .end annotation

    .line 562
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v0, p2}, Lio/netty/handler/codec/ValueConverter;->convertShort(S)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    move-result-object v0

    return-object v0
.end method

.method public setTimeMillis(Ljava/lang/Object;J)Lio/netty/handler/codec/Headers;
    .locals 1
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;J)TT;"
        }
    .end annotation

    .line 537
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    invoke-interface {v0, p2, p3}, Lio/netty/handler/codec/ValueConverter;->convertTimeMillis(J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/netty/handler/codec/DefaultHeaders;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 271
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    iget v0, p0, Lio/netty/handler/codec/DefaultHeaders;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 957
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/handler/codec/DefaultHeaders;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {p0}, Lio/netty/handler/codec/DefaultHeaders;->size()I

    move-result v2

    invoke-static {v0, v1, v2}, Lio/netty/handler/codec/HeadersUtils;->toString(Ljava/lang/Class;Ljava/util/Iterator;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected valueConverter()Lio/netty/handler/codec/ValueConverter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/handler/codec/ValueConverter<",
            "TV;>;"
        }
    .end annotation

    .line 965
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    iget-object v0, p0, Lio/netty/handler/codec/DefaultHeaders;->valueConverter:Lio/netty/handler/codec/ValueConverter;

    return-object v0
.end method

.method public valueIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 183
    .local p0, "this":Lio/netty/handler/codec/DefaultHeaders;, "Lio/netty/handler/codec/DefaultHeaders<TK;TV;TT;>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    new-instance v0, Lio/netty/handler/codec/DefaultHeaders$ValueIterator;

    invoke-direct {v0, p0, p1}, Lio/netty/handler/codec/DefaultHeaders$ValueIterator;-><init>(Lio/netty/handler/codec/DefaultHeaders;Ljava/lang/Object;)V

    return-object v0
.end method
