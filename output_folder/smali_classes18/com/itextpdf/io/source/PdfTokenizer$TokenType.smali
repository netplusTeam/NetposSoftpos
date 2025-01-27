.class public final enum Lcom/itextpdf/io/source/PdfTokenizer$TokenType;
.super Ljava/lang/Enum;
.source "PdfTokenizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/io/source/PdfTokenizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TokenType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itextpdf/io/source/PdfTokenizer$TokenType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

.field public static final enum Comment:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

.field public static final enum EndArray:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

.field public static final enum EndDic:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

.field public static final enum EndObj:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

.field public static final enum EndOfFile:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

.field public static final enum Name:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

.field public static final enum Number:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

.field public static final enum Obj:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

.field public static final enum Other:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

.field public static final enum Ref:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

.field public static final enum StartArray:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

.field public static final enum StartDic:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

.field public static final enum String:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 61
    new-instance v0, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    const-string v1, "Number"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Number:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    .line 62
    new-instance v1, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    const-string v3, "String"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->String:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    .line 63
    new-instance v3, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    const-string v5, "Name"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Name:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    .line 64
    new-instance v5, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    const-string v7, "Comment"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Comment:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    .line 65
    new-instance v7, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    const-string v9, "StartArray"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->StartArray:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    .line 66
    new-instance v9, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    const-string v11, "EndArray"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->EndArray:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    .line 67
    new-instance v11, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    const-string v13, "StartDic"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->StartDic:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    .line 68
    new-instance v13, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    const-string v15, "EndDic"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->EndDic:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    .line 69
    new-instance v15, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    const-string v14, "Ref"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Ref:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    .line 70
    new-instance v14, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    const-string v12, "Obj"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Obj:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    .line 71
    new-instance v12, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    const-string v10, "EndObj"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->EndObj:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    .line 72
    new-instance v10, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    const-string v8, "Other"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->Other:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    .line 73
    new-instance v8, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    const-string v6, "EndOfFile"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->EndOfFile:Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    .line 60
    const/16 v6, 0xd

    new-array v6, v6, [Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    aput-object v0, v6, v2

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    aput-object v8, v6, v4

    sput-object v6, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->$VALUES:[Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/io/source/PdfTokenizer$TokenType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 60
    const-class v0, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    return-object v0
.end method

.method public static values()[Lcom/itextpdf/io/source/PdfTokenizer$TokenType;
    .locals 1

    .line 60
    sget-object v0, Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->$VALUES:[Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    invoke-virtual {v0}, [Lcom/itextpdf/io/source/PdfTokenizer$TokenType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/io/source/PdfTokenizer$TokenType;

    return-object v0
.end method
