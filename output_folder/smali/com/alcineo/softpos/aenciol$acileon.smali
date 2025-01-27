.class public final enum Lcom/alcineo/softpos/aenciol$acileon;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alcineo/softpos/aenciol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "acileon"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alcineo/softpos/aenciol$acileon;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum acileon:Lcom/alcineo/softpos/aenciol$acileon;

.field public static final enum aoleinc:Lcom/alcineo/softpos/aenciol$acileon;

.field private static final synthetic enolcai:[Lcom/alcineo/softpos/aenciol$acileon;

.field public static final enum noaceli:Lcom/alcineo/softpos/aenciol$acileon;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/alcineo/softpos/aenciol$acileon;

    const-string v1, "FINISHED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alcineo/softpos/aenciol$acileon;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alcineo/softpos/aenciol$acileon;->acileon:Lcom/alcineo/softpos/aenciol$acileon;

    new-instance v1, Lcom/alcineo/softpos/aenciol$acileon;

    const-string v3, "ERROR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/alcineo/softpos/aenciol$acileon;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alcineo/softpos/aenciol$acileon;->aoleinc:Lcom/alcineo/softpos/aenciol$acileon;

    new-instance v3, Lcom/alcineo/softpos/aenciol$acileon;

    const-string v5, "TIMEOUT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/alcineo/softpos/aenciol$acileon;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/alcineo/softpos/aenciol$acileon;->noaceli:Lcom/alcineo/softpos/aenciol$acileon;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/alcineo/softpos/aenciol$acileon;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/alcineo/softpos/aenciol$acileon;->enolcai:[Lcom/alcineo/softpos/aenciol$acileon;

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

.method public static valueOf(Ljava/lang/String;)Lcom/alcineo/softpos/aenciol$acileon;
    .locals 1

    const-class v0, Lcom/alcineo/softpos/aenciol$acileon;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alcineo/softpos/aenciol$acileon;

    return-object p0
.end method

.method public static values()[Lcom/alcineo/softpos/aenciol$acileon;
    .locals 1

    sget-object v0, Lcom/alcineo/softpos/aenciol$acileon;->enolcai:[Lcom/alcineo/softpos/aenciol$acileon;

    invoke-virtual {v0}, [Lcom/alcineo/softpos/aenciol$acileon;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alcineo/softpos/aenciol$acileon;

    return-object v0
.end method
