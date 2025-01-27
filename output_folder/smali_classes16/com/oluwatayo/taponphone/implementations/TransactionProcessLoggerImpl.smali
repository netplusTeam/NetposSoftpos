.class public final Lcom/oluwatayo/taponphone/implementations/TransactionProcessLoggerImpl;
.super Ljava/lang/Object;
.source "TransactionProcessLoggerImpl.kt"

# interfaces
.implements Lcom/mastercard/terminalsdk/listeners/TransactionProcessLogger;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0011\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u00a2\u0006\u0002\u0010\u0005J\u0012\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u0012\u0010\u000c\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u0012\u0010\r\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u0012\u0010\u000e\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u0012\u0010\u000f\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u0012\u0010\u0010\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u0012\u0010\u0011\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u0012\u0010\u0012\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u0012\u0010\u0013\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u0012\u0010\u0014\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016R\u0015\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/oluwatayo/taponphone/implementations/TransactionProcessLoggerImpl;",
        "Lcom/mastercard/terminalsdk/listeners/TransactionProcessLogger;",
        "builder",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "(Ljava/lang/StringBuilder;)V",
        "getBuilder",
        "()Ljava/lang/StringBuilder;",
        "logApduExchange",
        "",
        "p0",
        "",
        "logCryptoOperations",
        "logDebug",
        "logError",
        "logInfo",
        "logInternalOperation",
        "logStage",
        "logTlvParsing",
        "logVerbose",
        "logWarning",
        "app_fcmbeasypayDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final builder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oluwatayo/taponphone/implementations/TransactionProcessLoggerImpl;->builder:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final getBuilder()Ljava/lang/StringBuilder;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/oluwatayo/taponphone/implementations/TransactionProcessLoggerImpl;->builder:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public logApduExchange(Ljava/lang/String;)V
    .locals 3
    .param p1, "p0"    # Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/oluwatayo/taponphone/implementations/TransactionProcessLoggerImpl;->builder:Ljava/lang/StringBuilder;

    const-string v1, "APDU EXCHANGE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "apdu exchange"

    invoke-static {v2, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    if-eqz p1, :cond_0

    move-object v1, p1

    .local v1, "it":Ljava/lang/String;
    const/4 v2, 0x0

    .line 51
    .local v2, "$i$a$-let-TransactionProcessLoggerImpl$logApduExchange$1":I
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    nop

    .line 50
    .end local v1    # "it":Ljava/lang/String;
    .end local v2    # "$i$a$-let-TransactionProcessLoggerImpl$logApduExchange$1":I
    nop

    .line 53
    :cond_0
    return-void
.end method

.method public logCryptoOperations(Ljava/lang/String;)V
    .locals 3
    .param p1, "p0"    # Ljava/lang/String;

    .line 8
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "crypto operation"

    invoke-static {v2, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    iget-object v1, p0, Lcom/oluwatayo/taponphone/implementations/TransactionProcessLoggerImpl;->builder:Ljava/lang/StringBuilder;

    const-string v2, "CRYPTO OPERATIONS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    if-eqz p1, :cond_0

    move-object v1, p1

    .local v1, "it":Ljava/lang/String;
    const/4 v2, 0x0

    .line 11
    .local v2, "$i$a$-let-TransactionProcessLoggerImpl$logCryptoOperations$1":I
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    nop

    .line 10
    .end local v1    # "it":Ljava/lang/String;
    .end local v2    # "$i$a$-let-TransactionProcessLoggerImpl$logCryptoOperations$1":I
    nop

    .line 13
    :cond_0
    return-void
.end method

.method public logDebug(Ljava/lang/String;)V
    .locals 3
    .param p1, "p0"    # Ljava/lang/String;

    .line 32
    iget-object v0, p0, Lcom/oluwatayo/taponphone/implementations/TransactionProcessLoggerImpl;->builder:Ljava/lang/StringBuilder;

    const-string v1, "DEBUG: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "debug operation"

    invoke-static {v2, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    if-eqz p1, :cond_0

    move-object v1, p1

    .local v1, "it":Ljava/lang/String;
    const/4 v2, 0x0

    .line 35
    .local v2, "$i$a$-let-TransactionProcessLoggerImpl$logDebug$1":I
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    nop

    .line 34
    .end local v1    # "it":Ljava/lang/String;
    .end local v2    # "$i$a$-let-TransactionProcessLoggerImpl$logDebug$1":I
    nop

    .line 37
    :cond_0
    return-void
.end method

.method public logError(Ljava/lang/String;)V
    .locals 3
    .param p1, "p0"    # Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/oluwatayo/taponphone/implementations/TransactionProcessLoggerImpl;->builder:Ljava/lang/StringBuilder;

    const-string v1, "ERROR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "error operation"

    invoke-static {v2, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    if-eqz p1, :cond_0

    move-object v1, p1

    .local v1, "it":Ljava/lang/String;
    const/4 v2, 0x0

    .line 83
    .local v2, "$i$a$-let-TransactionProcessLoggerImpl$logError$1":I
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    nop

    .line 82
    .end local v1    # "it":Ljava/lang/String;
    .end local v2    # "$i$a$-let-TransactionProcessLoggerImpl$logError$1":I
    nop

    .line 85
    :cond_0
    return-void
.end method

.method public logInfo(Ljava/lang/String;)V
    .locals 3
    .param p1, "p0"    # Ljava/lang/String;

    .line 40
    iget-object v0, p0, Lcom/oluwatayo/taponphone/implementations/TransactionProcessLoggerImpl;->builder:Ljava/lang/StringBuilder;

    const-string v1, "INFO: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "info operation"

    invoke-static {v2, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    if-eqz p1, :cond_0

    move-object v1, p1

    .local v1, "it":Ljava/lang/String;
    const/4 v2, 0x0

    .line 43
    .local v2, "$i$a$-let-TransactionProcessLoggerImpl$logInfo$1":I
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Ltimber/log/Timber;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    nop

    .line 42
    .end local v1    # "it":Ljava/lang/String;
    .end local v2    # "$i$a$-let-TransactionProcessLoggerImpl$logInfo$1":I
    nop

    .line 45
    :cond_0
    return-void
.end method

.method public logInternalOperation(Ljava/lang/String;)V
    .locals 3
    .param p1, "p0"    # Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "internal operation"

    invoke-static {v2, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    iget-object v1, p0, Lcom/oluwatayo/taponphone/implementations/TransactionProcessLoggerImpl;->builder:Ljava/lang/StringBuilder;

    const-string v2, "INTERNAL OPERATION: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    if-eqz p1, :cond_0

    move-object v1, p1

    .local v1, "it":Ljava/lang/String;
    const/4 v2, 0x0

    .line 19
    .local v2, "$i$a$-let-TransactionProcessLoggerImpl$logInternalOperation$1":I
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    nop

    .line 18
    .end local v1    # "it":Ljava/lang/String;
    .end local v2    # "$i$a$-let-TransactionProcessLoggerImpl$logInternalOperation$1":I
    nop

    .line 21
    :cond_0
    return-void
.end method

.method public logStage(Ljava/lang/String;)V
    .locals 3
    .param p1, "p0"    # Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/oluwatayo/taponphone/implementations/TransactionProcessLoggerImpl;->builder:Ljava/lang/StringBuilder;

    const-string v1, "STAGE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "stage operation"

    invoke-static {v2, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    if-eqz p1, :cond_0

    move-object v1, p1

    .local v1, "it":Ljava/lang/String;
    const/4 v2, 0x0

    .line 67
    .local v2, "$i$a$-let-TransactionProcessLoggerImpl$logStage$1":I
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    nop

    .line 66
    .end local v1    # "it":Ljava/lang/String;
    .end local v2    # "$i$a$-let-TransactionProcessLoggerImpl$logStage$1":I
    nop

    .line 69
    :cond_0
    return-void
.end method

.method public logTlvParsing(Ljava/lang/String;)V
    .locals 3
    .param p1, "p0"    # Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/oluwatayo/taponphone/implementations/TransactionProcessLoggerImpl;->builder:Ljava/lang/StringBuilder;

    const-string v1, "TLV PARSING: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "tlv parsing"

    invoke-static {v2, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    if-eqz p1, :cond_0

    move-object v1, p1

    .local v1, "it":Ljava/lang/String;
    const/4 v2, 0x0

    .line 59
    .local v2, "$i$a$-let-TransactionProcessLoggerImpl$logTlvParsing$1":I
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    nop

    .line 58
    .end local v1    # "it":Ljava/lang/String;
    .end local v2    # "$i$a$-let-TransactionProcessLoggerImpl$logTlvParsing$1":I
    nop

    .line 61
    :cond_0
    return-void
.end method

.method public logVerbose(Ljava/lang/String;)V
    .locals 3
    .param p1, "p0"    # Ljava/lang/String;

    .line 24
    iget-object v0, p0, Lcom/oluwatayo/taponphone/implementations/TransactionProcessLoggerImpl;->builder:Ljava/lang/StringBuilder;

    const-string v1, "VERBOSE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "verbose operation"

    invoke-static {v2, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    if-eqz p1, :cond_0

    move-object v1, p1

    .local v1, "it":Ljava/lang/String;
    const/4 v2, 0x0

    .line 27
    .local v2, "$i$a$-let-TransactionProcessLoggerImpl$logVerbose$1":I
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Ltimber/log/Timber;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    nop

    .line 26
    .end local v1    # "it":Ljava/lang/String;
    .end local v2    # "$i$a$-let-TransactionProcessLoggerImpl$logVerbose$1":I
    nop

    .line 29
    :cond_0
    return-void
.end method

.method public logWarning(Ljava/lang/String;)V
    .locals 3
    .param p1, "p0"    # Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/oluwatayo/taponphone/implementations/TransactionProcessLoggerImpl;->builder:Ljava/lang/StringBuilder;

    const-string v1, "WARNING: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "warn operation"

    invoke-static {v2, v1}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    if-eqz p1, :cond_0

    move-object v1, p1

    .local v1, "it":Ljava/lang/String;
    const/4 v2, 0x0

    .line 75
    .local v2, "$i$a$-let-TransactionProcessLoggerImpl$logWarning$1":I
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v0}, Ltimber/log/Timber;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    nop

    .line 74
    .end local v1    # "it":Ljava/lang/String;
    .end local v2    # "$i$a$-let-TransactionProcessLoggerImpl$logWarning$1":I
    nop

    .line 77
    :cond_0
    return-void
.end method
