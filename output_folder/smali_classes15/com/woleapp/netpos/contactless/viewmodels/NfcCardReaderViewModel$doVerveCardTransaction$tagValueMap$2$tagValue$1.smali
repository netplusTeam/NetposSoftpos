.class final Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel$doVerveCardTransaction$tagValueMap$2$tagValue$1;
.super Lkotlin/jvm/internal/Lambda;
.source "NfcCardReaderViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel;->doVerveCardTransaction(Lcom/woleapp/netpos/contactless/taponphone/verve/model/TransactionFullDataDto;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Byte;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0005\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "byte",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel$doVerveCardTransaction$tagValueMap$2$tagValue$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel$doVerveCardTransaction$tagValueMap$2$tagValue$1;

    invoke-direct {v0}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel$doVerveCardTransaction$tagValueMap$2$tagValue$1;-><init>()V

    sput-object v0, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel$doVerveCardTransaction$tagValueMap$2$tagValue$1;->INSTANCE:Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel$doVerveCardTransaction$tagValueMap$2$tagValue$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(B)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "byte"    # B

    .line 186
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%02x"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(this, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 185
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v0

    invoke-virtual {p0, v0}, Lcom/woleapp/netpos/contactless/viewmodels/NfcCardReaderViewModel$doVerveCardTransaction$tagValueMap$2$tagValue$1;->invoke(B)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
