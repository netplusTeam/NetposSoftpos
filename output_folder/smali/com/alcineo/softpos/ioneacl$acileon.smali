.class public final enum Lcom/alcineo/softpos/ioneacl$acileon;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alcineo/softpos/ioneacl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "acileon"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alcineo/softpos/ioneacl$acileon;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum acileon:Lcom/alcineo/softpos/ioneacl$acileon;

.field public static final enum aoleinc:Lcom/alcineo/softpos/ioneacl$acileon;

.field private static final synthetic noaceli:[Lcom/alcineo/softpos/ioneacl$acileon;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/alcineo/softpos/ioneacl$acileon;

    const-string v1, "MENU"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alcineo/softpos/ioneacl$acileon;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alcineo/softpos/ioneacl$acileon;->acileon:Lcom/alcineo/softpos/ioneacl$acileon;

    new-instance v1, Lcom/alcineo/softpos/ioneacl$acileon;

    const-string v3, "TIMEOUT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/alcineo/softpos/ioneacl$acileon;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/alcineo/softpos/ioneacl$acileon;->aoleinc:Lcom/alcineo/softpos/ioneacl$acileon;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/alcineo/softpos/ioneacl$acileon;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/alcineo/softpos/ioneacl$acileon;->noaceli:[Lcom/alcineo/softpos/ioneacl$acileon;

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

.method public static valueOf(Ljava/lang/String;)Lcom/alcineo/softpos/ioneacl$acileon;
    .locals 1

    const-class v0, Lcom/alcineo/softpos/ioneacl$acileon;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alcineo/softpos/ioneacl$acileon;

    return-object p0
.end method

.method public static values()[Lcom/alcineo/softpos/ioneacl$acileon;
    .locals 1

    sget-object v0, Lcom/alcineo/softpos/ioneacl$acileon;->noaceli:[Lcom/alcineo/softpos/ioneacl$acileon;

    invoke-virtual {v0}, [Lcom/alcineo/softpos/ioneacl$acileon;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alcineo/softpos/ioneacl$acileon;

    return-object v0
.end method
