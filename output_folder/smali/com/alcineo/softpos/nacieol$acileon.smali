.class public final enum Lcom/alcineo/softpos/nacieol$acileon;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alcineo/softpos/nacieol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "acileon"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alcineo/softpos/nacieol$acileon;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum aoleinc:Lcom/alcineo/softpos/nacieol$acileon;

.field public static final enum enolcai:Lcom/alcineo/softpos/nacieol$acileon;

.field private static final synthetic nacieol:[Lcom/alcineo/softpos/nacieol$acileon;

.field public static final enum noaceli:Lcom/alcineo/softpos/nacieol$acileon;

.field public static final enum ocenlai:Lcom/alcineo/softpos/nacieol$acileon;


# instance fields
.field public acileon:B


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/alcineo/softpos/nacieol$acileon;

    const-string v1, "MODE_CIPHER"

    const/4 v2, 0x0

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/alcineo/softpos/nacieol$acileon;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/alcineo/softpos/nacieol$acileon;->aoleinc:Lcom/alcineo/softpos/nacieol$acileon;

    new-instance v1, Lcom/alcineo/softpos/nacieol$acileon;

    const-string v3, "MODE_UNCIPHER"

    const/4 v4, 0x1

    const/16 v5, 0x12

    invoke-direct {v1, v3, v4, v5}, Lcom/alcineo/softpos/nacieol$acileon;-><init>(Ljava/lang/String;IB)V

    sput-object v1, Lcom/alcineo/softpos/nacieol$acileon;->noaceli:Lcom/alcineo/softpos/nacieol$acileon;

    new-instance v3, Lcom/alcineo/softpos/nacieol$acileon;

    const-string v5, "MODE_SIGN"

    const/4 v6, 0x2

    const/16 v7, 0x13

    invoke-direct {v3, v5, v6, v7}, Lcom/alcineo/softpos/nacieol$acileon;-><init>(Ljava/lang/String;IB)V

    sput-object v3, Lcom/alcineo/softpos/nacieol$acileon;->enolcai:Lcom/alcineo/softpos/nacieol$acileon;

    new-instance v5, Lcom/alcineo/softpos/nacieol$acileon;

    const-string v7, "MODE_VERIFY"

    const/4 v8, 0x3

    const/16 v9, 0x14

    invoke-direct {v5, v7, v8, v9}, Lcom/alcineo/softpos/nacieol$acileon;-><init>(Ljava/lang/String;IB)V

    sput-object v5, Lcom/alcineo/softpos/nacieol$acileon;->ocenlai:Lcom/alcineo/softpos/nacieol$acileon;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/alcineo/softpos/nacieol$acileon;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/alcineo/softpos/nacieol$acileon;->nacieol:[Lcom/alcineo/softpos/nacieol$acileon;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-byte p3, p0, Lcom/alcineo/softpos/nacieol$acileon;->acileon:B

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alcineo/softpos/nacieol$acileon;
    .locals 1

    const-class v0, Lcom/alcineo/softpos/nacieol$acileon;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alcineo/softpos/nacieol$acileon;

    return-object p0
.end method

.method public static values()[Lcom/alcineo/softpos/nacieol$acileon;
    .locals 1

    sget-object v0, Lcom/alcineo/softpos/nacieol$acileon;->nacieol:[Lcom/alcineo/softpos/nacieol$acileon;

    invoke-virtual {v0}, [Lcom/alcineo/softpos/nacieol$acileon;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alcineo/softpos/nacieol$acileon;

    return-object v0
.end method
