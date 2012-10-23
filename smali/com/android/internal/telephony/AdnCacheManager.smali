.class public Lcom/android/internal/telephony/AdnCacheManager;
.super Ljava/lang/Object;
.source "AdnCacheManager.java"


# static fields
.field public static final SERVICE_NAME:Ljava/lang/String; = "miui.adnCacheManager"

.field private static final TAG:Ljava/lang/String; = "AdnCacheManager"


# instance fields
.field private mAdnCache:Lcom/android/internal/telephony/AdnRecordCache;

.field private mAdnCapacity:I

.field private mFreeAdn:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/AdnRecordCache;)V
    .registers 2
    .parameter "adnCache"

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/internal/telephony/AdnCacheManager;->mAdnCache:Lcom/android/internal/telephony/AdnRecordCache;

    .line 19
    return-void
.end method


# virtual methods
.method public getAdnCapacity()I
    .registers 2

    .prologue
    .line 71
    iget v0, p0, Lcom/android/internal/telephony/AdnCacheManager;->mAdnCapacity:I

    return v0
.end method

.method public getFreeAdn()I
    .registers 2

    .prologue
    .line 67
    iget v0, p0, Lcom/android/internal/telephony/AdnCacheManager;->mFreeAdn:I

    return v0
.end method

.method public handleAllAdnLikeLoaded(ILjava/util/ArrayList;)V
    .registers 6
    .parameter "efid"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p2, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    const/16 v0, 0x4f30

    if-ne p1, v0, :cond_2d

    .line 42
    const/16 p1, 0x6f3a

    .line 43
    iget-object v0, p0, Lcom/android/internal/telephony/AdnCacheManager;->mAdnCache:Lcom/android/internal/telephony/AdnRecordCache;

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 44
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/AdnCacheManager;->mAdnCapacity:I

    .line 45
    const-string v0, "AdnCacheManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ADN capacity is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/AdnCacheManager;->mAdnCapacity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_2d
    return-void
.end method

.method public handleLoadAllAdnLike(ILandroid/os/AsyncResult;)V
    .registers 8
    .parameter "efid"
    .parameter "ar"

    .prologue
    .line 50
    const/16 v2, 0x4f30

    if-ne p1, v2, :cond_6

    .line 51
    const/16 p1, 0x6f3a

    .line 53
    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/AdnCacheManager;->mAdnCache:Lcom/android/internal/telephony/AdnRecordCache;

    iget-object v3, v2, Lcom/android/internal/telephony/AdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    iget-object v2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    const/16 v2, 0x6f3b

    if-eq p1, v2, :cond_5c

    const/16 v2, 0x6f49

    if-eq p1, v2, :cond_5c

    .line 55
    iget-object v2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    move-object v0, v2

    check-cast v0, Ljava/util/ArrayList;

    .line 56
    .local v0, adnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/AdnCacheManager;->mAdnCapacity:I

    .line 57
    const-string v2, "AdnCacheManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ADN capacity is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/AdnCacheManager;->mAdnCapacity:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v1, 0x0

    .local v1, i:I
    :goto_41
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5c

    .line 59
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/AdnRecord;

    invoke-virtual {v2}, Lcom/android/internal/telephony/AdnRecord;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_59

    .line 60
    iget v2, p0, Lcom/android/internal/telephony/AdnCacheManager;->mFreeAdn:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/AdnCacheManager;->mFreeAdn:I

    .line 58
    :cond_59
    add-int/lit8 v1, v1, 0x1

    goto :goto_41

    .line 64
    .end local v0           #adnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AdnRecord;>;"
    .end local v1           #i:I
    :cond_5c
    return-void
.end method

.method public handleNonExistentAdnRecord(I)V
    .registers 3
    .parameter "efid"

    .prologue
    .line 27
    const/16 v0, 0x6f3a

    if-ne p1, v0, :cond_7

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/AdnCacheManager;->mFreeAdn:I

    .line 30
    :cond_7
    return-void
.end method

.method public handleUpdateAdnRecord(ILcom/android/internal/telephony/AdnRecord;Lcom/android/internal/telephony/AdnRecord;)V
    .registers 6
    .parameter "efid"
    .parameter "oldAdn"
    .parameter "newAdn"

    .prologue
    const/16 v1, 0x6f3a

    .line 33
    invoke-virtual {p2}, Lcom/android/internal/telephony/AdnRecord;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    if-ne p1, v1, :cond_11

    .line 34
    iget v0, p0, Lcom/android/internal/telephony/AdnCacheManager;->mFreeAdn:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/AdnCacheManager;->mFreeAdn:I

    .line 38
    :cond_10
    :goto_10
    return-void

    .line 35
    :cond_11
    invoke-virtual {p3}, Lcom/android/internal/telephony/AdnRecord;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    if-ne p1, v1, :cond_10

    .line 36
    iget v0, p0, Lcom/android/internal/telephony/AdnCacheManager;->mFreeAdn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/AdnCacheManager;->mFreeAdn:I

    goto :goto_10
.end method

.method public reset()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/android/internal/telephony/AdnCacheManager;->mFreeAdn:I

    .line 23
    iput v0, p0, Lcom/android/internal/telephony/AdnCacheManager;->mAdnCapacity:I

    .line 24
    return-void
.end method
