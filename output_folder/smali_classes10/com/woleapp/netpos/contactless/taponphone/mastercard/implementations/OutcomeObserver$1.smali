.class synthetic Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/OutcomeObserver$1;
.super Ljava/lang/Object;
.source "OutcomeObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/OutcomeObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$mastercard$terminalsdk$objects$OutcomeParameterSet$Status:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 152
    invoke-static {}, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;->values()[Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/OutcomeObserver$1;->$SwitchMap$com$mastercard$terminalsdk$objects$OutcomeParameterSet$Status:[I

    :try_start_0
    sget-object v1, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;->APPROVED:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;

    invoke-virtual {v1}, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/OutcomeObserver$1;->$SwitchMap$com$mastercard$terminalsdk$objects$OutcomeParameterSet$Status:[I

    sget-object v1, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;->ONLINE_REQUEST:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;

    invoke-virtual {v1}, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    :try_start_2
    sget-object v0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/OutcomeObserver$1;->$SwitchMap$com$mastercard$terminalsdk$objects$OutcomeParameterSet$Status:[I

    sget-object v1, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;->DECLINED:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;

    invoke-virtual {v1}, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    :goto_2
    :try_start_3
    sget-object v0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/OutcomeObserver$1;->$SwitchMap$com$mastercard$terminalsdk$objects$OutcomeParameterSet$Status:[I

    sget-object v1, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;->END_APPLICATION:Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;

    invoke-virtual {v1}, Lcom/mastercard/terminalsdk/objects/OutcomeParameterSet$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    return-void
.end method
