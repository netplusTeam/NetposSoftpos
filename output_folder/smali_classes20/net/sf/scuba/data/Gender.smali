.class public abstract enum Lnet/sf/scuba/data/Gender;
.super Ljava/lang/Enum;
.source "Gender.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/sf/scuba/data/Gender;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/sf/scuba/data/Gender;

.field public static final enum FEMALE:Lnet/sf/scuba/data/Gender;

.field public static final enum MALE:Lnet/sf/scuba/data/Gender;

.field public static final enum UNKNOWN:Lnet/sf/scuba/data/Gender;

.field public static final enum UNSPECIFIED:Lnet/sf/scuba/data/Gender;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 36
    new-instance v0, Lnet/sf/scuba/data/Gender$1;

    const-string v1, "MALE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/sf/scuba/data/Gender$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/sf/scuba/data/Gender;->MALE:Lnet/sf/scuba/data/Gender;

    .line 42
    new-instance v1, Lnet/sf/scuba/data/Gender$2;

    const-string v3, "FEMALE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lnet/sf/scuba/data/Gender$2;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lnet/sf/scuba/data/Gender;->FEMALE:Lnet/sf/scuba/data/Gender;

    .line 48
    new-instance v3, Lnet/sf/scuba/data/Gender$3;

    const-string v5, "UNKNOWN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lnet/sf/scuba/data/Gender$3;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lnet/sf/scuba/data/Gender;->UNKNOWN:Lnet/sf/scuba/data/Gender;

    .line 54
    new-instance v5, Lnet/sf/scuba/data/Gender$4;

    const-string v7, "UNSPECIFIED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lnet/sf/scuba/data/Gender$4;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lnet/sf/scuba/data/Gender;->UNSPECIFIED:Lnet/sf/scuba/data/Gender;

    .line 34
    const/4 v7, 0x4

    new-array v7, v7, [Lnet/sf/scuba/data/Gender;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lnet/sf/scuba/data/Gender;->$VALUES:[Lnet/sf/scuba/data/Gender;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILnet/sf/scuba/data/Gender$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lnet/sf/scuba/data/Gender$1;

    .line 34
    invoke-direct {p0, p1, p2}, Lnet/sf/scuba/data/Gender;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getInstance(I)Lnet/sf/scuba/data/Gender;
    .locals 5
    .param p0, "code"    # I

    .line 75
    invoke-static {}, Lnet/sf/scuba/data/Gender;->values()[Lnet/sf/scuba/data/Gender;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 76
    .local v3, "g":Lnet/sf/scuba/data/Gender;
    invoke-virtual {v3}, Lnet/sf/scuba/data/Gender;->toInt()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 77
    return-object v3

    .line 75
    .end local v3    # "g":Lnet/sf/scuba/data/Gender;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    :cond_1
    sget-object v0, Lnet/sf/scuba/data/Gender;->UNKNOWN:Lnet/sf/scuba/data/Gender;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/sf/scuba/data/Gender;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 34
    const-class v0, Lnet/sf/scuba/data/Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/sf/scuba/data/Gender;

    return-object v0
.end method

.method public static values()[Lnet/sf/scuba/data/Gender;
    .locals 1

    .line 34
    sget-object v0, Lnet/sf/scuba/data/Gender;->$VALUES:[Lnet/sf/scuba/data/Gender;

    invoke-virtual {v0}, [Lnet/sf/scuba/data/Gender;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/sf/scuba/data/Gender;

    return-object v0
.end method


# virtual methods
.method public abstract toInt()I
.end method
