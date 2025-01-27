.class public Lcom/visa/vac/tc/emvconverter/model/Cancel_Transaction$ParameterContainer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visa/vac/tc/emvconverter/model/Cancel_Transaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ParameterContainer"
.end annotation


# static fields
.field private static $$a:I

.field private static ContactlessConfiguration:I


# instance fields
.field final synthetic this$0:Lcom/visa/vac/tc/emvconverter/model/Cancel_Transaction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/visa/vac/tc/emvconverter/model/Cancel_Transaction$ParameterContainer;->ContactlessConfiguration:I

    const/4 v0, 0x1

    sput v0, Lcom/visa/vac/tc/emvconverter/model/Cancel_Transaction$ParameterContainer;->$$a:I

    return-void
.end method

.method public constructor <init>(Lcom/visa/vac/tc/emvconverter/model/Cancel_Transaction;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/Cancel_Transaction$ParameterContainer;->this$0:Lcom/visa/vac/tc/emvconverter/model/Cancel_Transaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 60
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/visa/vac/tc/emvconverter/model/Cancel_Transaction$ParameterContainer;->ContactlessConfiguration:I

    add-int/lit8 v1, v1, 0x61

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/visa/vac/tc/emvconverter/model/Cancel_Transaction$ParameterContainer;->$$a:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method
