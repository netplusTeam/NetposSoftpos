.class public Lcom/visa/vac/tc/emvconverter/model/ErrorResponse$ErrorResponseDetail;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visa/vac/tc/emvconverter/model/ErrorResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ErrorResponseDetail"
.end annotation


# instance fields
.field public location:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field final synthetic this$0:Lcom/visa/vac/tc/emvconverter/model/ErrorResponse;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/visa/vac/tc/emvconverter/model/ErrorResponse;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/visa/vac/tc/emvconverter/model/ErrorResponse$ErrorResponseDetail;->this$0:Lcom/visa/vac/tc/emvconverter/model/ErrorResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
