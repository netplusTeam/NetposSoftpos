.class public final enum Lcom/alcineo/softpos/payment/model/EMVTags;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alcineo/softpos/payment/model/EMVTags;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alcineo/softpos/payment/model/EMVTags;

.field public static final enum ATTESTATION_ID_TAG:Lcom/alcineo/softpos/payment/model/EMVTags;

.field public static final enum CLEAR_DATA_EMV_TAG:Lcom/alcineo/softpos/payment/model/EMVTags;

.field public static final enum CYPHERED_DATA_TAG:Lcom/alcineo/softpos/payment/model/EMVTags;

.field public static final enum OUTCOME_PARAMETER_SET:Lcom/alcineo/softpos/payment/model/EMVTags;

.field public static final enum SIGNED_DATA_TAG:Lcom/alcineo/softpos/payment/model/EMVTags;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    new-instance v0, Lcom/alcineo/softpos/payment/model/EMVTags;

    const-string v1, "CLEAR_DATA_EMV_TAG"

    const/4 v2, 0x0

    const v3, 0xff8105

    invoke-direct {v0, v1, v2, v3}, Lcom/alcineo/softpos/payment/model/EMVTags;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alcineo/softpos/payment/model/EMVTags;->CLEAR_DATA_EMV_TAG:Lcom/alcineo/softpos/payment/model/EMVTags;

    new-instance v1, Lcom/alcineo/softpos/payment/model/EMVTags;

    const-string v3, "CYPHERED_DATA_TAG"

    const/4 v4, 0x1

    const/16 v5, 0x74

    invoke-direct {v1, v3, v4, v5}, Lcom/alcineo/softpos/payment/model/EMVTags;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/alcineo/softpos/payment/model/EMVTags;->CYPHERED_DATA_TAG:Lcom/alcineo/softpos/payment/model/EMVTags;

    new-instance v3, Lcom/alcineo/softpos/payment/model/EMVTags;

    const-string v5, "SIGNED_DATA_TAG"

    const/4 v6, 0x2

    const/16 v7, 0x75

    invoke-direct {v3, v5, v6, v7}, Lcom/alcineo/softpos/payment/model/EMVTags;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/alcineo/softpos/payment/model/EMVTags;->SIGNED_DATA_TAG:Lcom/alcineo/softpos/payment/model/EMVTags;

    new-instance v5, Lcom/alcineo/softpos/payment/model/EMVTags;

    const-string v7, "ATTESTATION_ID_TAG"

    const/4 v8, 0x3

    const/16 v9, 0x76

    invoke-direct {v5, v7, v8, v9}, Lcom/alcineo/softpos/payment/model/EMVTags;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/alcineo/softpos/payment/model/EMVTags;->ATTESTATION_ID_TAG:Lcom/alcineo/softpos/payment/model/EMVTags;

    new-instance v7, Lcom/alcineo/softpos/payment/model/EMVTags;

    const-string v9, "OUTCOME_PARAMETER_SET"

    const/4 v10, 0x4

    const v11, 0xdf8129

    invoke-direct {v7, v9, v10, v11}, Lcom/alcineo/softpos/payment/model/EMVTags;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/alcineo/softpos/payment/model/EMVTags;->OUTCOME_PARAMETER_SET:Lcom/alcineo/softpos/payment/model/EMVTags;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/alcineo/softpos/payment/model/EMVTags;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/alcineo/softpos/payment/model/EMVTags;->$VALUES:[Lcom/alcineo/softpos/payment/model/EMVTags;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/alcineo/softpos/payment/model/EMVTags;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alcineo/softpos/payment/model/EMVTags;
    .locals 1

    const-class v0, Lcom/alcineo/softpos/payment/model/EMVTags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alcineo/softpos/payment/model/EMVTags;

    return-object p0
.end method

.method public static values()[Lcom/alcineo/softpos/payment/model/EMVTags;
    .locals 1

    sget-object v0, Lcom/alcineo/softpos/payment/model/EMVTags;->$VALUES:[Lcom/alcineo/softpos/payment/model/EMVTags;

    invoke-virtual {v0}, [Lcom/alcineo/softpos/payment/model/EMVTags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alcineo/softpos/payment/model/EMVTags;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/alcineo/softpos/payment/model/EMVTags;->value:I

    return v0
.end method
