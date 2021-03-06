.class public final Landroid/os/ParcelUuid;
.super Ljava/lang/Object;
.source "ParcelUuid.java"


# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end field



# instance fields
.field private final mUuid:Ljava/util/UUID;



# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 110
    new-instance v0, Landroid/os/ParcelUuid$1;

    invoke-direct {v0}, Landroid/os/ParcelUuid$1;-><init>()V

    sput-object v0, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;)V
    .registers 2
    .parameter "uuid"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Landroid/os/ParcelUuid;->mUuid:Ljava/util/UUID;

    .line 38
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;
    .registers 3
    .parameter "uuid"

    .prologue
    .line 52
    new-instance v0, Landroid/os/ParcelUuid;

    invoke-static {p0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "object"

    .prologue
    const/4 v3, 0x0

    .line 93
    if-nez p1, :cond_5

    move v2, v3

    .line 107
    :goto_4
    return v2

    .line 97
    :cond_5
    if-ne p0, p1, :cond_9

    .line 98
    const/4 v2, 0x1

    goto :goto_4

    .line 101
    :cond_9
    instance-of v2, p1, Landroid/os/ParcelUuid;

    if-nez v2, :cond_f

    move v2, v3

    .line 102
    goto :goto_4

    .line 105
    :cond_f
    move-object v0, p1

    check-cast v0, Landroid/os/ParcelUuid;

    move-object v1, v0

    .line 107
    .local v1, that:Landroid/os/ParcelUuid;
    iget-object v2, p0, Landroid/os/ParcelUuid;->mUuid:Ljava/util/UUID;

    iget-object v3, v1, Landroid/os/ParcelUuid;->mUuid:Ljava/util/UUID;

    invoke-virtual {v2, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_4
.end method

.method public getUuid()Ljava/util/UUID;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Landroid/os/ParcelUuid;->mUuid:Ljava/util/UUID;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Landroid/os/ParcelUuid;->mUuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Landroid/os/ParcelUuid;->mUuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 129
    iget-object v0, p0, Landroid/os/ParcelUuid;->mUuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 130
    iget-object v0, p0, Landroid/os/ParcelUuid;->mUuid:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 131
    return-void
.end method
