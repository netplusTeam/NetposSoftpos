.class public final enum Lorg/apache/sshd/common/util/io/der/ASN1Class;
.super Ljava/lang/Enum;
.source "ASN1Class.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/sshd/common/util/io/der/ASN1Class;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/sshd/common/util/io/der/ASN1Class;

.field public static final enum APPLICATION:Lorg/apache/sshd/common/util/io/der/ASN1Class;

.field public static final enum CONTEXT:Lorg/apache/sshd/common/util/io/der/ASN1Class;

.field public static final enum PRIVATE:Lorg/apache/sshd/common/util/io/der/ASN1Class;

.field public static final enum UNIVERSAL:Lorg/apache/sshd/common/util/io/der/ASN1Class;

.field public static final VALUES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/util/io/der/ASN1Class;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final byteValue:B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 32
    new-instance v0, Lorg/apache/sshd/common/util/io/der/ASN1Class;

    const-string v1, "UNIVERSAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/sshd/common/util/io/der/ASN1Class;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/apache/sshd/common/util/io/der/ASN1Class;->UNIVERSAL:Lorg/apache/sshd/common/util/io/der/ASN1Class;

    .line 33
    new-instance v1, Lorg/apache/sshd/common/util/io/der/ASN1Class;

    const-string v3, "APPLICATION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lorg/apache/sshd/common/util/io/der/ASN1Class;-><init>(Ljava/lang/String;IB)V

    sput-object v1, Lorg/apache/sshd/common/util/io/der/ASN1Class;->APPLICATION:Lorg/apache/sshd/common/util/io/der/ASN1Class;

    .line 34
    new-instance v3, Lorg/apache/sshd/common/util/io/der/ASN1Class;

    const-string v5, "CONTEXT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lorg/apache/sshd/common/util/io/der/ASN1Class;-><init>(Ljava/lang/String;IB)V

    sput-object v3, Lorg/apache/sshd/common/util/io/der/ASN1Class;->CONTEXT:Lorg/apache/sshd/common/util/io/der/ASN1Class;

    .line 35
    new-instance v5, Lorg/apache/sshd/common/util/io/der/ASN1Class;

    const-string v7, "PRIVATE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lorg/apache/sshd/common/util/io/der/ASN1Class;-><init>(Ljava/lang/String;IB)V

    sput-object v5, Lorg/apache/sshd/common/util/io/der/ASN1Class;->PRIVATE:Lorg/apache/sshd/common/util/io/der/ASN1Class;

    .line 30
    const/4 v7, 0x4

    new-array v7, v7, [Lorg/apache/sshd/common/util/io/der/ASN1Class;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lorg/apache/sshd/common/util/io/der/ASN1Class;->$VALUES:[Lorg/apache/sshd/common/util/io/der/ASN1Class;

    .line 38
    invoke-static {}, Lorg/apache/sshd/common/util/io/der/ASN1Class;->values()[Lorg/apache/sshd/common/util/io/der/ASN1Class;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/util/io/der/ASN1Class;->VALUES:Ljava/util/List;

    .line 37
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .param p3, "classValue"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput-byte p3, p0, Lorg/apache/sshd/common/util/io/der/ASN1Class;->byteValue:B

    .line 44
    return-void
.end method

.method public static fromDERValue(I)Lorg/apache/sshd/common/util/io/der/ASN1Class;
    .locals 1
    .param p0, "value"    # I

    .line 78
    shr-int/lit8 v0, p0, 0x6

    and-int/lit8 v0, v0, 0x3

    invoke-static {v0}, Lorg/apache/sshd/common/util/io/der/ASN1Class;->fromTypeValue(I)Lorg/apache/sshd/common/util/io/der/ASN1Class;

    move-result-object v0

    return-object v0
.end method

.method public static fromName(Ljava/lang/String;)Lorg/apache/sshd/common/util/io/der/ASN1Class;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .line 51
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 52
    return-object v1

    .line 55
    :cond_0
    sget-object v0, Lorg/apache/sshd/common/util/io/der/ASN1Class;->VALUES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/util/io/der/ASN1Class;

    .line 56
    .local v2, "c":Lorg/apache/sshd/common/util/io/der/ASN1Class;
    invoke-virtual {v2}, Lorg/apache/sshd/common/util/io/der/ASN1Class;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 57
    return-object v2

    .line 59
    .end local v2    # "c":Lorg/apache/sshd/common/util/io/der/ASN1Class;
    :cond_1
    goto :goto_0

    .line 61
    :cond_2
    return-object v1
.end method

.method public static fromTypeValue(I)Lorg/apache/sshd/common/util/io/der/ASN1Class;
    .locals 2
    .param p0, "value"    # I

    .line 87
    if-ltz p0, :cond_1

    sget-object v0, Lorg/apache/sshd/common/util/io/der/ASN1Class;->VALUES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lt p0, v1, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/util/io/der/ASN1Class;

    return-object v0

    .line 88
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/sshd/common/util/io/der/ASN1Class;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 30
    const-class v0, Lorg/apache/sshd/common/util/io/der/ASN1Class;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/util/io/der/ASN1Class;

    return-object v0
.end method

.method public static values()[Lorg/apache/sshd/common/util/io/der/ASN1Class;
    .locals 1

    .line 30
    sget-object v0, Lorg/apache/sshd/common/util/io/der/ASN1Class;->$VALUES:[Lorg/apache/sshd/common/util/io/der/ASN1Class;

    invoke-virtual {v0}, [Lorg/apache/sshd/common/util/io/der/ASN1Class;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/sshd/common/util/io/der/ASN1Class;

    return-object v0
.end method


# virtual methods
.method public getClassValue()B
    .locals 1

    .line 47
    iget-byte v0, p0, Lorg/apache/sshd/common/util/io/der/ASN1Class;->byteValue:B

    return v0
.end method
