.class public final enum Lcom/alcineo/utils/tlv/TlvClass;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alcineo/utils/tlv/TlvClass;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Application:Lcom/alcineo/utils/tlv/TlvClass;

.field public static final enum Context:Lcom/alcineo/utils/tlv/TlvClass;

.field public static final enum Private:Lcom/alcineo/utils/tlv/TlvClass;

.field public static final enum Universal:Lcom/alcineo/utils/tlv/TlvClass;

.field private static final synthetic acileon:[Lcom/alcineo/utils/tlv/TlvClass;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/alcineo/utils/tlv/TlvClass;

    const-string v1, "Universal"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alcineo/utils/tlv/TlvClass;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alcineo/utils/tlv/TlvClass;->Universal:Lcom/alcineo/utils/tlv/TlvClass;

    new-instance v1, Lcom/alcineo/utils/tlv/TlvClass;

    const-string v3, "Application"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/alcineo/utils/tlv/TlvClass;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alcineo/utils/tlv/TlvClass;->Application:Lcom/alcineo/utils/tlv/TlvClass;

    new-instance v3, Lcom/alcineo/utils/tlv/TlvClass;

    const-string v5, "Context"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/alcineo/utils/tlv/TlvClass;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/alcineo/utils/tlv/TlvClass;->Context:Lcom/alcineo/utils/tlv/TlvClass;

    new-instance v5, Lcom/alcineo/utils/tlv/TlvClass;

    const-string v7, "Private"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/alcineo/utils/tlv/TlvClass;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/alcineo/utils/tlv/TlvClass;->Private:Lcom/alcineo/utils/tlv/TlvClass;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/alcineo/utils/tlv/TlvClass;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/alcineo/utils/tlv/TlvClass;->acileon:[Lcom/alcineo/utils/tlv/TlvClass;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alcineo/utils/tlv/TlvClass;
    .locals 1

    const-class v0, Lcom/alcineo/utils/tlv/TlvClass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alcineo/utils/tlv/TlvClass;

    return-object p0
.end method

.method public static values()[Lcom/alcineo/utils/tlv/TlvClass;
    .locals 1

    sget-object v0, Lcom/alcineo/utils/tlv/TlvClass;->acileon:[Lcom/alcineo/utils/tlv/TlvClass;

    invoke-virtual {v0}, [Lcom/alcineo/utils/tlv/TlvClass;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alcineo/utils/tlv/TlvClass;

    return-object v0
.end method
