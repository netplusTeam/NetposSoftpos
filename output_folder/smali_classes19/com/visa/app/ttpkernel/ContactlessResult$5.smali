.class final Lcom/visa/app/ttpkernel/ContactlessResult$5;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visa/app/ttpkernel/ContactlessResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    const/16 v0, 0xaa

    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/Utils;->shortToString(S)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/Utils;->trimLeadingZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 33
    const/16 v0, -0x20ff

    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/Utils;->shortToString(S)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 34
    const/16 v0, -0x20fe

    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/Utils;->shortToString(S)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 35
    const/16 v0, -0x20fd

    invoke-static {v0}, Lcom/visa/vac/tc/emvconverter/Utils;->shortToString(S)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 36
    return-void
.end method
