.class public final enum Lcom/itextpdf/forms/xfdf/Encoding;
.super Ljava/lang/Enum;
.source "Encoding.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itextpdf/forms/xfdf/Encoding;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/forms/xfdf/Encoding;

.field public static final enum ASCII:Lcom/itextpdf/forms/xfdf/Encoding;

.field public static final enum HEX:Lcom/itextpdf/forms/xfdf/Encoding;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 51
    new-instance v0, Lcom/itextpdf/forms/xfdf/Encoding;

    const-string v1, "ASCII"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/forms/xfdf/Encoding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/forms/xfdf/Encoding;->ASCII:Lcom/itextpdf/forms/xfdf/Encoding;

    new-instance v1, Lcom/itextpdf/forms/xfdf/Encoding;

    const-string v3, "HEX"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/itextpdf/forms/xfdf/Encoding;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/itextpdf/forms/xfdf/Encoding;->HEX:Lcom/itextpdf/forms/xfdf/Encoding;

    .line 49
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/itextpdf/forms/xfdf/Encoding;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/itextpdf/forms/xfdf/Encoding;->$VALUES:[Lcom/itextpdf/forms/xfdf/Encoding;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/Encoding;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 49
    const-class v0, Lcom/itextpdf/forms/xfdf/Encoding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/forms/xfdf/Encoding;

    return-object v0
.end method

.method public static values()[Lcom/itextpdf/forms/xfdf/Encoding;
    .locals 1

    .line 49
    sget-object v0, Lcom/itextpdf/forms/xfdf/Encoding;->$VALUES:[Lcom/itextpdf/forms/xfdf/Encoding;

    invoke-virtual {v0}, [Lcom/itextpdf/forms/xfdf/Encoding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/forms/xfdf/Encoding;

    return-object v0
.end method
