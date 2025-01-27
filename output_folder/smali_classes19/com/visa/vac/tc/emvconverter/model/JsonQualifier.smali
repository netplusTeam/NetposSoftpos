.class public Lcom/visa/vac/tc/emvconverter/model/JsonQualifier;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visa/vac/tc/emvconverter/model/JsonQualifier$qualifier;
    }
.end annotation


# static fields
.field private static ContactlessConfiguration:I

.field private static getTerminalData:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/visa/vac/tc/emvconverter/model/JsonQualifier;->getTerminalData:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/vac/tc/emvconverter/model/JsonQualifier;->ContactlessConfiguration:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getQualifier(Ljava/lang/String;)Lcom/visa/vac/tc/emvconverter/model/JsonQualifier$qualifier;
    .locals 2

    .line 11
    new-instance v0, Lcom/visa/vac/tc/emvconverter/model/JsonQualifier$qualifier;

    invoke-direct {v0, p0}, Lcom/visa/vac/tc/emvconverter/model/JsonQualifier$qualifier;-><init>(Ljava/lang/String;)V

    sget p0, Lcom/visa/vac/tc/emvconverter/model/JsonQualifier;->ContactlessConfiguration:I

    add-int/lit8 p0, p0, 0x71

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lcom/visa/vac/tc/emvconverter/model/JsonQualifier;->getTerminalData:I

    rem-int/lit8 p0, p0, 0x2

    return-object v0
.end method
