.class final enum Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;
.super Ljava/lang/Enum;
.source "EncryptedSharedPreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/security/crypto/EncryptedSharedPreferences;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "EncryptedType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;

.field public static final enum BOOLEAN:Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;

.field public static final enum FLOAT:Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;

.field public static final enum INT:Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;

.field public static final enum LONG:Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;

.field public static final enum STRING:Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;

.field public static final enum STRING_SET:Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;


# instance fields
.field private final mId:I


# direct methods
.method private static synthetic $values()[Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;
    .locals 3

    .line 499
    const/4 v0, 0x6

    new-array v0, v0, [Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;

    sget-object v1, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;->STRING:Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;->STRING_SET:Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;->INT:Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;->LONG:Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;->FLOAT:Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;->BOOLEAN:Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 500
    new-instance v0, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;

    const-string v1, "STRING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;->STRING:Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;

    .line 501
    new-instance v0, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;

    const-string v1, "STRING_SET"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;->STRING_SET:Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;

    .line 502
    new-instance v0, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;

    const-string v1, "INT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;->INT:Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;

    .line 503
    new-instance v0, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;

    const-string v1, "LONG"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;->LONG:Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;

    .line 504
    new-instance v0, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;

    const-string v1, "FLOAT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;->FLOAT:Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;

    .line 505
    new-instance v0, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;

    const-string v1, "BOOLEAN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;->BOOLEAN:Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;

    .line 499
    invoke-static {}, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;->$values()[Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;

    move-result-object v0

    sput-object v0, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;->$VALUES:[Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 509
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 510
    iput p3, p0, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;->mId:I

    .line 511
    return-void
.end method

.method public static fromId(I)Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;
    .locals 1
    .param p0, "id"    # I

    .line 519
    packed-switch p0, :pswitch_data_0

    .line 533
    const/4 v0, 0x0

    return-object v0

    .line 531
    :pswitch_0
    sget-object v0, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;->BOOLEAN:Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;

    return-object v0

    .line 529
    :pswitch_1
    sget-object v0, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;->FLOAT:Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;

    return-object v0

    .line 527
    :pswitch_2
    sget-object v0, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;->LONG:Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;

    return-object v0

    .line 525
    :pswitch_3
    sget-object v0, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;->INT:Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;

    return-object v0

    .line 523
    :pswitch_4
    sget-object v0, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;->STRING_SET:Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;

    return-object v0

    .line 521
    :pswitch_5
    sget-object v0, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;->STRING:Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 499
    const-class v0, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;

    return-object v0
.end method

.method public static values()[Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;
    .locals 1

    .line 499
    sget-object v0, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;->$VALUES:[Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;

    invoke-virtual {v0}, [Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 514
    iget v0, p0, Landroidx/security/crypto/EncryptedSharedPreferences$EncryptedType;->mId:I

    return v0
.end method
