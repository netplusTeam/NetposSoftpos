.class synthetic Lcom/itextpdf/forms/PdfSigFieldLock$1;
.super Ljava/lang/Object;
.source "PdfSigFieldLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/forms/PdfSigFieldLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$itextpdf$forms$PdfSigFieldLock$LockAction:[I

.field static final synthetic $SwitchMap$com$itextpdf$forms$PdfSigFieldLock$LockPermissions:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 120
    invoke-static {}, Lcom/itextpdf/forms/PdfSigFieldLock$LockPermissions;->values()[Lcom/itextpdf/forms/PdfSigFieldLock$LockPermissions;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/itextpdf/forms/PdfSigFieldLock$1;->$SwitchMap$com$itextpdf$forms$PdfSigFieldLock$LockPermissions:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/itextpdf/forms/PdfSigFieldLock$LockPermissions;->NO_CHANGES_ALLOWED:Lcom/itextpdf/forms/PdfSigFieldLock$LockPermissions;

    invoke-virtual {v2}, Lcom/itextpdf/forms/PdfSigFieldLock$LockPermissions;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/itextpdf/forms/PdfSigFieldLock$1;->$SwitchMap$com$itextpdf$forms$PdfSigFieldLock$LockPermissions:[I

    sget-object v3, Lcom/itextpdf/forms/PdfSigFieldLock$LockPermissions;->FORM_FILLING:Lcom/itextpdf/forms/PdfSigFieldLock$LockPermissions;

    invoke-virtual {v3}, Lcom/itextpdf/forms/PdfSigFieldLock$LockPermissions;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/itextpdf/forms/PdfSigFieldLock$1;->$SwitchMap$com$itextpdf$forms$PdfSigFieldLock$LockPermissions:[I

    sget-object v4, Lcom/itextpdf/forms/PdfSigFieldLock$LockPermissions;->FORM_FILLING_AND_ANNOTATION:Lcom/itextpdf/forms/PdfSigFieldLock$LockPermissions;

    invoke-virtual {v4}, Lcom/itextpdf/forms/PdfSigFieldLock$LockPermissions;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    .line 107
    :goto_2
    invoke-static {}, Lcom/itextpdf/forms/PdfSigFieldLock$LockAction;->values()[Lcom/itextpdf/forms/PdfSigFieldLock$LockAction;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/itextpdf/forms/PdfSigFieldLock$1;->$SwitchMap$com$itextpdf$forms$PdfSigFieldLock$LockAction:[I

    :try_start_3
    sget-object v4, Lcom/itextpdf/forms/PdfSigFieldLock$LockAction;->ALL:Lcom/itextpdf/forms/PdfSigFieldLock$LockAction;

    invoke-virtual {v4}, Lcom/itextpdf/forms/PdfSigFieldLock$LockAction;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/itextpdf/forms/PdfSigFieldLock$1;->$SwitchMap$com$itextpdf$forms$PdfSigFieldLock$LockAction:[I

    sget-object v3, Lcom/itextpdf/forms/PdfSigFieldLock$LockAction;->INCLUDE:Lcom/itextpdf/forms/PdfSigFieldLock$LockAction;

    invoke-virtual {v3}, Lcom/itextpdf/forms/PdfSigFieldLock$LockAction;->ordinal()I

    move-result v3

    aput v0, v1, v3
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    :goto_4
    :try_start_5
    sget-object v0, Lcom/itextpdf/forms/PdfSigFieldLock$1;->$SwitchMap$com$itextpdf$forms$PdfSigFieldLock$LockAction:[I

    sget-object v1, Lcom/itextpdf/forms/PdfSigFieldLock$LockAction;->EXCLUDE:Lcom/itextpdf/forms/PdfSigFieldLock$LockAction;

    invoke-virtual {v1}, Lcom/itextpdf/forms/PdfSigFieldLock$LockAction;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    :goto_5
    return-void
.end method
