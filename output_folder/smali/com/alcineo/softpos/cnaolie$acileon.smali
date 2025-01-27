.class public final enum Lcom/alcineo/softpos/cnaolie$acileon;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alcineo/softpos/cnaolie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "acileon"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alcineo/softpos/cnaolie$acileon;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum acileon:Lcom/alcineo/softpos/cnaolie$acileon;

.field public static final enum aoleinc:Lcom/alcineo/softpos/cnaolie$acileon;

.field private static final synthetic noaceli:[Lcom/alcineo/softpos/cnaolie$acileon;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/alcineo/softpos/cnaolie$acileon;

    const-string v1, "INCOMING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alcineo/softpos/cnaolie$acileon;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alcineo/softpos/cnaolie$acileon;->acileon:Lcom/alcineo/softpos/cnaolie$acileon;

    new-instance v1, Lcom/alcineo/softpos/cnaolie$acileon;

    const-string v3, "OUTGOING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/alcineo/softpos/cnaolie$acileon;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alcineo/softpos/cnaolie$acileon;->aoleinc:Lcom/alcineo/softpos/cnaolie$acileon;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/alcineo/softpos/cnaolie$acileon;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/alcineo/softpos/cnaolie$acileon;->noaceli:[Lcom/alcineo/softpos/cnaolie$acileon;

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

.method public static valueOf(Ljava/lang/String;)Lcom/alcineo/softpos/cnaolie$acileon;
    .locals 1

    const-class v0, Lcom/alcineo/softpos/cnaolie$acileon;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alcineo/softpos/cnaolie$acileon;

    return-object p0
.end method

.method public static values()[Lcom/alcineo/softpos/cnaolie$acileon;
    .locals 1

    sget-object v0, Lcom/alcineo/softpos/cnaolie$acileon;->noaceli:[Lcom/alcineo/softpos/cnaolie$acileon;

    invoke-virtual {v0}, [Lcom/alcineo/softpos/cnaolie$acileon;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alcineo/softpos/cnaolie$acileon;

    return-object v0
.end method
