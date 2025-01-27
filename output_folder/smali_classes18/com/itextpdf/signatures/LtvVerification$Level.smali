.class public final enum Lcom/itextpdf/signatures/LtvVerification$Level;
.super Ljava/lang/Enum;
.source "LtvVerification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/signatures/LtvVerification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itextpdf/signatures/LtvVerification$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/signatures/LtvVerification$Level;

.field public static final enum CRL:Lcom/itextpdf/signatures/LtvVerification$Level;

.field public static final enum OCSP:Lcom/itextpdf/signatures/LtvVerification$Level;

.field public static final enum OCSP_CRL:Lcom/itextpdf/signatures/LtvVerification$Level;

.field public static final enum OCSP_OPTIONAL_CRL:Lcom/itextpdf/signatures/LtvVerification$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 110
    new-instance v0, Lcom/itextpdf/signatures/LtvVerification$Level;

    const-string v1, "OCSP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/signatures/LtvVerification$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/signatures/LtvVerification$Level;->OCSP:Lcom/itextpdf/signatures/LtvVerification$Level;

    .line 114
    new-instance v1, Lcom/itextpdf/signatures/LtvVerification$Level;

    const-string v3, "CRL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/itextpdf/signatures/LtvVerification$Level;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/itextpdf/signatures/LtvVerification$Level;->CRL:Lcom/itextpdf/signatures/LtvVerification$Level;

    .line 118
    new-instance v3, Lcom/itextpdf/signatures/LtvVerification$Level;

    const-string v5, "OCSP_CRL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/itextpdf/signatures/LtvVerification$Level;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/itextpdf/signatures/LtvVerification$Level;->OCSP_CRL:Lcom/itextpdf/signatures/LtvVerification$Level;

    .line 122
    new-instance v5, Lcom/itextpdf/signatures/LtvVerification$Level;

    const-string v7, "OCSP_OPTIONAL_CRL"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/itextpdf/signatures/LtvVerification$Level;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/itextpdf/signatures/LtvVerification$Level;->OCSP_OPTIONAL_CRL:Lcom/itextpdf/signatures/LtvVerification$Level;

    .line 106
    const/4 v7, 0x4

    new-array v7, v7, [Lcom/itextpdf/signatures/LtvVerification$Level;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/itextpdf/signatures/LtvVerification$Level;->$VALUES:[Lcom/itextpdf/signatures/LtvVerification$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/signatures/LtvVerification$Level;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 106
    const-class v0, Lcom/itextpdf/signatures/LtvVerification$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/signatures/LtvVerification$Level;

    return-object v0
.end method

.method public static values()[Lcom/itextpdf/signatures/LtvVerification$Level;
    .locals 1

    .line 106
    sget-object v0, Lcom/itextpdf/signatures/LtvVerification$Level;->$VALUES:[Lcom/itextpdf/signatures/LtvVerification$Level;

    invoke-virtual {v0}, [Lcom/itextpdf/signatures/LtvVerification$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/signatures/LtvVerification$Level;

    return-object v0
.end method
