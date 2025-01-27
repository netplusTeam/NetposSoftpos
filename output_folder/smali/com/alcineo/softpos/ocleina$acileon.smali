.class public final enum Lcom/alcineo/softpos/ocleina$acileon;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alcineo/softpos/ocleina;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "acileon"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alcineo/softpos/ocleina$acileon;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum aoleinc:Lcom/alcineo/softpos/ocleina$acileon;

.field public static final enum enolcai:Lcom/alcineo/softpos/ocleina$acileon;

.field public static final enum noaceli:Lcom/alcineo/softpos/ocleina$acileon;

.field private static final synthetic ocenlai:[Lcom/alcineo/softpos/ocleina$acileon;


# instance fields
.field private final acileon:B


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/alcineo/softpos/ocleina$acileon;

    const-string v1, "SYMETRIC"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/alcineo/softpos/ocleina$acileon;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/alcineo/softpos/ocleina$acileon;->aoleinc:Lcom/alcineo/softpos/ocleina$acileon;

    new-instance v1, Lcom/alcineo/softpos/ocleina$acileon;

    const-string v4, "ASYMETRIC"

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5}, Lcom/alcineo/softpos/ocleina$acileon;-><init>(Ljava/lang/String;IB)V

    sput-object v1, Lcom/alcineo/softpos/ocleina$acileon;->noaceli:Lcom/alcineo/softpos/ocleina$acileon;

    new-instance v4, Lcom/alcineo/softpos/ocleina$acileon;

    const-string v6, "TOKEN"

    const/4 v7, 0x3

    invoke-direct {v4, v6, v5, v7}, Lcom/alcineo/softpos/ocleina$acileon;-><init>(Ljava/lang/String;IB)V

    sput-object v4, Lcom/alcineo/softpos/ocleina$acileon;->enolcai:Lcom/alcineo/softpos/ocleina$acileon;

    new-array v6, v7, [Lcom/alcineo/softpos/ocleina$acileon;

    aput-object v0, v6, v2

    aput-object v1, v6, v3

    aput-object v4, v6, v5

    sput-object v6, Lcom/alcineo/softpos/ocleina$acileon;->ocenlai:[Lcom/alcineo/softpos/ocleina$acileon;

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

    iput-byte p3, p0, Lcom/alcineo/softpos/ocleina$acileon;->acileon:B

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alcineo/softpos/ocleina$acileon;
    .locals 1

    const-class v0, Lcom/alcineo/softpos/ocleina$acileon;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alcineo/softpos/ocleina$acileon;

    return-object p0
.end method

.method public static values()[Lcom/alcineo/softpos/ocleina$acileon;
    .locals 1

    sget-object v0, Lcom/alcineo/softpos/ocleina$acileon;->ocenlai:[Lcom/alcineo/softpos/ocleina$acileon;

    invoke-virtual {v0}, [Lcom/alcineo/softpos/ocleina$acileon;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alcineo/softpos/ocleina$acileon;

    return-object v0
.end method


# virtual methods
.method public acileon()B
    .locals 1

    iget-byte v0, p0, Lcom/alcineo/softpos/ocleina$acileon;->acileon:B

    return v0
.end method
