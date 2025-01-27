.class public final enum Lcom/github/devnied/emvnfccard/iso7816emv/ITag$Class;
.super Ljava/lang/Enum;
.source "ITag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/devnied/emvnfccard/iso7816emv/ITag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Class"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/github/devnied/emvnfccard/iso7816emv/ITag$Class;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/github/devnied/emvnfccard/iso7816emv/ITag$Class;

.field public static final enum APPLICATION:Lcom/github/devnied/emvnfccard/iso7816emv/ITag$Class;

.field public static final enum CONTEXT_SPECIFIC:Lcom/github/devnied/emvnfccard/iso7816emv/ITag$Class;

.field public static final enum PRIVATE:Lcom/github/devnied/emvnfccard/iso7816emv/ITag$Class;

.field public static final enum UNIVERSAL:Lcom/github/devnied/emvnfccard/iso7816emv/ITag$Class;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 29
    new-instance v0, Lcom/github/devnied/emvnfccard/iso7816emv/ITag$Class;

    const-string v1, "UNIVERSAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/github/devnied/emvnfccard/iso7816emv/ITag$Class;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/github/devnied/emvnfccard/iso7816emv/ITag$Class;->UNIVERSAL:Lcom/github/devnied/emvnfccard/iso7816emv/ITag$Class;

    new-instance v1, Lcom/github/devnied/emvnfccard/iso7816emv/ITag$Class;

    const-string v3, "APPLICATION"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/github/devnied/emvnfccard/iso7816emv/ITag$Class;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/github/devnied/emvnfccard/iso7816emv/ITag$Class;->APPLICATION:Lcom/github/devnied/emvnfccard/iso7816emv/ITag$Class;

    new-instance v3, Lcom/github/devnied/emvnfccard/iso7816emv/ITag$Class;

    const-string v5, "CONTEXT_SPECIFIC"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/github/devnied/emvnfccard/iso7816emv/ITag$Class;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/github/devnied/emvnfccard/iso7816emv/ITag$Class;->CONTEXT_SPECIFIC:Lcom/github/devnied/emvnfccard/iso7816emv/ITag$Class;

    new-instance v5, Lcom/github/devnied/emvnfccard/iso7816emv/ITag$Class;

    const-string v7, "PRIVATE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/github/devnied/emvnfccard/iso7816emv/ITag$Class;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/github/devnied/emvnfccard/iso7816emv/ITag$Class;->PRIVATE:Lcom/github/devnied/emvnfccard/iso7816emv/ITag$Class;

    .line 28
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/github/devnied/emvnfccard/iso7816emv/ITag$Class;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/github/devnied/emvnfccard/iso7816emv/ITag$Class;->$VALUES:[Lcom/github/devnied/emvnfccard/iso7816emv/ITag$Class;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/github/devnied/emvnfccard/iso7816emv/ITag$Class;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 28
    const-class v0, Lcom/github/devnied/emvnfccard/iso7816emv/ITag$Class;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/github/devnied/emvnfccard/iso7816emv/ITag$Class;

    return-object v0
.end method

.method public static values()[Lcom/github/devnied/emvnfccard/iso7816emv/ITag$Class;
    .locals 1

    .line 28
    sget-object v0, Lcom/github/devnied/emvnfccard/iso7816emv/ITag$Class;->$VALUES:[Lcom/github/devnied/emvnfccard/iso7816emv/ITag$Class;

    invoke-virtual {v0}, [Lcom/github/devnied/emvnfccard/iso7816emv/ITag$Class;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/github/devnied/emvnfccard/iso7816emv/ITag$Class;

    return-object v0
.end method
