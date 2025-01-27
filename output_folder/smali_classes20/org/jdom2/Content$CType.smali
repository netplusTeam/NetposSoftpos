.class public final enum Lorg/jdom2/Content$CType;
.super Ljava/lang/Enum;
.source "Content.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdom2/Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jdom2/Content$CType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jdom2/Content$CType;

.field public static final enum CDATA:Lorg/jdom2/Content$CType;

.field public static final enum Comment:Lorg/jdom2/Content$CType;

.field public static final enum DocType:Lorg/jdom2/Content$CType;

.field public static final enum Element:Lorg/jdom2/Content$CType;

.field public static final enum EntityRef:Lorg/jdom2/Content$CType;

.field public static final enum ProcessingInstruction:Lorg/jdom2/Content$CType;

.field public static final enum Text:Lorg/jdom2/Content$CType;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 116
    new-instance v0, Lorg/jdom2/Content$CType;

    const-string v1, "Comment"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jdom2/Content$CType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jdom2/Content$CType;->Comment:Lorg/jdom2/Content$CType;

    .line 118
    new-instance v1, Lorg/jdom2/Content$CType;

    const-string v3, "Element"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jdom2/Content$CType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jdom2/Content$CType;->Element:Lorg/jdom2/Content$CType;

    .line 120
    new-instance v3, Lorg/jdom2/Content$CType;

    const-string v5, "ProcessingInstruction"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/jdom2/Content$CType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jdom2/Content$CType;->ProcessingInstruction:Lorg/jdom2/Content$CType;

    .line 122
    new-instance v5, Lorg/jdom2/Content$CType;

    const-string v7, "EntityRef"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/jdom2/Content$CType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/jdom2/Content$CType;->EntityRef:Lorg/jdom2/Content$CType;

    .line 124
    new-instance v7, Lorg/jdom2/Content$CType;

    const-string v9, "Text"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/jdom2/Content$CType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/jdom2/Content$CType;->Text:Lorg/jdom2/Content$CType;

    .line 126
    new-instance v9, Lorg/jdom2/Content$CType;

    const-string v11, "CDATA"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/jdom2/Content$CType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/jdom2/Content$CType;->CDATA:Lorg/jdom2/Content$CType;

    .line 128
    new-instance v11, Lorg/jdom2/Content$CType;

    const-string v13, "DocType"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lorg/jdom2/Content$CType;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/jdom2/Content$CType;->DocType:Lorg/jdom2/Content$CType;

    .line 114
    const/4 v13, 0x7

    new-array v13, v13, [Lorg/jdom2/Content$CType;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lorg/jdom2/Content$CType;->$VALUES:[Lorg/jdom2/Content$CType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 114
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jdom2/Content$CType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 114
    const-class v0, Lorg/jdom2/Content$CType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jdom2/Content$CType;

    return-object v0
.end method

.method public static values()[Lorg/jdom2/Content$CType;
    .locals 1

    .line 114
    sget-object v0, Lorg/jdom2/Content$CType;->$VALUES:[Lorg/jdom2/Content$CType;

    invoke-virtual {v0}, [Lorg/jdom2/Content$CType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jdom2/Content$CType;

    return-object v0
.end method
