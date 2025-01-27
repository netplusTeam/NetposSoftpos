.class public Lcom/itextpdf/kernel/LicenseVersionException;
.super Ljava/lang/RuntimeException;
.source "LicenseVersionException.java"


# static fields
.field public static final LICENSE_FILE_NOT_LOADED:Ljava/lang/String; = "License file not loaded."

.field public static final MAJOR_VERSION_IS_NOT_NUMERIC:Ljava/lang/String; = "Major version is not numeric"

.field public static final MINOR_VERSION_IS_NOT_NUMERIC:Ljava/lang/String; = "Minor version is not numeric"

.field public static final NO_I_TEXT7_LICENSE_IS_LOADED_BUT_AN_I_TEXT5_LICENSE_IS_LOADED:Ljava/lang/String; = "No iText7 License is loaded but an iText5 license is loaded."

.field public static final THE_MAJOR_VERSION_OF_THE_LICENSE_0_IS_HIGHER_THAN_THE_MAJOR_VERSION_1_OF_THE_CORE_LIBRARY:Ljava/lang/String; = "The major version of the license ({0}) is higher than the major version ({1}) of the Core library."

.field public static final THE_MAJOR_VERSION_OF_THE_LICENSE_0_IS_LOWER_THAN_THE_MAJOR_VERSION_1_OF_THE_CORE_LIBRARY:Ljava/lang/String; = "The major version of the license ({0}) is lower than the major version ({1}) of the Core library."

.field public static final THE_MINOR_VERSION_OF_THE_LICENSE_0_IS_HIGHER_THAN_THE_MINOR_VERSION_1_OF_THE_CORE_LIBRARY:Ljava/lang/String; = "The minor version of the license ({0}) is higher than the minor version ({1}) of the Core library."

.field public static final THE_MINOR_VERSION_OF_THE_LICENSE_0_IS_LOWER_THAN_THE_MINOR_VERSION_1_OF_THE_CORE_LIBRARY:Ljava/lang/String; = "The minor version of the license ({0}) is lower than the minor version ({1}) of the Core library."

.field public static final UNKNOWN_EXCEPTION_WHEN_CHECKING_LICENSE_VERSION:Ljava/lang/String; = "Unknown Exception when checking License version"

.field public static final VERSION_STRING_IS_EMPTY_AND_CANNOT_BE_PARSED:Ljava/lang/String; = "Version string is empty and cannot be parsed."


# instance fields
.field private messageParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected object:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 82
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .line 101
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/LicenseVersionException;-><init>(Ljava/lang/String;)V

    .line 102
    iput-object p2, p0, Lcom/itextpdf/kernel/LicenseVersionException;->object:Ljava/lang/Object;

    .line 103
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 112
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .param p3, "obj"    # Ljava/lang/Object;

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/kernel/LicenseVersionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    iput-object p3, p0, Lcom/itextpdf/kernel/LicenseVersionException;->object:Ljava/lang/Object;

    .line 125
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 91
    const-string v0, "Unknown Exception when checking License version"

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/kernel/LicenseVersionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/itextpdf/kernel/LicenseVersionException;->messageParams:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    invoke-super {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/LicenseVersionException;->getMessageParams()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 130
    :cond_1
    :goto_0
    invoke-super {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getMessageParams()[Ljava/lang/Object;
    .locals 3

    .line 154
    iget-object v0, p0, Lcom/itextpdf/kernel/LicenseVersionException;->messageParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    .line 155
    .local v0, "parameters":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/kernel/LicenseVersionException;->messageParams:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 156
    iget-object v2, p0, Lcom/itextpdf/kernel/LicenseVersionException;->messageParams:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public varargs setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/LicenseVersionException;
    .locals 1
    .param p1, "messageParams"    # [Ljava/lang/Object;

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/LicenseVersionException;->messageParams:Ljava/util/List;

    .line 144
    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 145
    return-object p0
.end method
