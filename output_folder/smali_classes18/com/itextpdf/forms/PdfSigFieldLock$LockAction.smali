.class public final enum Lcom/itextpdf/forms/PdfSigFieldLock$LockAction;
.super Ljava/lang/Enum;
.source "PdfSigFieldLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/forms/PdfSigFieldLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LockAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itextpdf/forms/PdfSigFieldLock$LockAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/forms/PdfSigFieldLock$LockAction;

.field public static final enum ALL:Lcom/itextpdf/forms/PdfSigFieldLock$LockAction;

.field public static final enum EXCLUDE:Lcom/itextpdf/forms/PdfSigFieldLock$LockAction;

.field public static final enum INCLUDE:Lcom/itextpdf/forms/PdfSigFieldLock$LockAction;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 143
    new-instance v0, Lcom/itextpdf/forms/PdfSigFieldLock$LockAction;

    const-string v1, "ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/forms/PdfSigFieldLock$LockAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/forms/PdfSigFieldLock$LockAction;->ALL:Lcom/itextpdf/forms/PdfSigFieldLock$LockAction;

    new-instance v1, Lcom/itextpdf/forms/PdfSigFieldLock$LockAction;

    const-string v3, "INCLUDE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/itextpdf/forms/PdfSigFieldLock$LockAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/itextpdf/forms/PdfSigFieldLock$LockAction;->INCLUDE:Lcom/itextpdf/forms/PdfSigFieldLock$LockAction;

    new-instance v3, Lcom/itextpdf/forms/PdfSigFieldLock$LockAction;

    const-string v5, "EXCLUDE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/itextpdf/forms/PdfSigFieldLock$LockAction;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/itextpdf/forms/PdfSigFieldLock$LockAction;->EXCLUDE:Lcom/itextpdf/forms/PdfSigFieldLock$LockAction;

    .line 142
    const/4 v5, 0x3

    new-array v5, v5, [Lcom/itextpdf/forms/PdfSigFieldLock$LockAction;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/itextpdf/forms/PdfSigFieldLock$LockAction;->$VALUES:[Lcom/itextpdf/forms/PdfSigFieldLock$LockAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 142
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/forms/PdfSigFieldLock$LockAction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 142
    const-class v0, Lcom/itextpdf/forms/PdfSigFieldLock$LockAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/forms/PdfSigFieldLock$LockAction;

    return-object v0
.end method

.method public static values()[Lcom/itextpdf/forms/PdfSigFieldLock$LockAction;
    .locals 1

    .line 142
    sget-object v0, Lcom/itextpdf/forms/PdfSigFieldLock$LockAction;->$VALUES:[Lcom/itextpdf/forms/PdfSigFieldLock$LockAction;

    invoke-virtual {v0}, [Lcom/itextpdf/forms/PdfSigFieldLock$LockAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/forms/PdfSigFieldLock$LockAction;

    return-object v0
.end method
