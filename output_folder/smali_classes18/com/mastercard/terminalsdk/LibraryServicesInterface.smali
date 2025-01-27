.class public interface abstract Lcom/mastercard/terminalsdk/LibraryServicesInterface;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getAvailableReaderProfiles()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLibraryInformation()Lcom/mastercard/terminalsdk/objects/LibraryInformation;
.end method

.method public abstract queryTerminalDatabaseFor(I)Lcom/mastercard/terminalsdk/iso8825/BerTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;
        }
    .end annotation
.end method
