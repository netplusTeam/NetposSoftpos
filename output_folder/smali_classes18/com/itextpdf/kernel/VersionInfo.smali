.class public Lcom/itextpdf/kernel/VersionInfo;
.super Ljava/lang/Object;
.source "VersionInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x150344285d045631L


# instance fields
.field private final licenseKey:Ljava/lang/String;

.field private final producerLine:Ljava/lang/String;

.field private final productName:Ljava/lang/String;

.field private final releaseNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "productName"    # Ljava/lang/String;
    .param p2, "releaseNumber"    # Ljava/lang/String;
    .param p3, "producerLine"    # Ljava/lang/String;
    .param p4, "licenseKey"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/itextpdf/kernel/VersionInfo;->productName:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/itextpdf/kernel/VersionInfo;->releaseNumber:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lcom/itextpdf/kernel/VersionInfo;->producerLine:Ljava/lang/String;

    .line 61
    iput-object p4, p0, Lcom/itextpdf/kernel/VersionInfo;->licenseKey:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/itextpdf/kernel/VersionInfo;->licenseKey:Ljava/lang/String;

    return-object v0
.end method

.method public getProduct()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/itextpdf/kernel/VersionInfo;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public getRelease()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/itextpdf/kernel/VersionInfo;->releaseNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/itextpdf/kernel/VersionInfo;->producerLine:Ljava/lang/String;

    return-object v0
.end method
